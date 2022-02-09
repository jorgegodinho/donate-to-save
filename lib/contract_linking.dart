import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

class ContractLinking extends ChangeNotifier {
  final String rpcUrl = "HTTP://127.0.0.1:7545";
  final String wsUrl = "ws://127.0.0.1:7545";
  final String privateKey = "c779e8f707fd8ec7c91a96721eb297b925f70f3e9398e169478073d719d779bc";

  DeployedContract contract;
  ContractFunction addBloodDonation, changeNextAvailability, incrementLivesSaved,
      getBloodDonationsByYear, getBloodDonationsByLocation, getAvailability, getBloodDonations,
      getpreferedPlace, useBlood, bloodCenters, getNotifications, getLivesSaved, getIsUsed;

  Web3Client ethClient;
  bool isLoading = true;

  String abi;
  EthereumAddress contractAddress;

  Credentials credentials;


  ContractLinking() {
    initialSetup();
  }

  initialSetup() async {

    // establish a connection to the ethereum rpc node. The socketConnector
    // property allows more efficient event streams over websocket instead of
    // http-polls. However, the socketConnector property is experimental.
    ethClient = Web3Client(rpcUrl, Client(), socketConnector: () {
      return IOWebSocketChannel.connect(wsUrl).cast<String>();
    });

    await getAbi();
    await getCredentials();
    await getDeployedContract();
  }

  Future<void> getAbi() async {

    // Reading the contract abi
    String abiStringFile =
    await rootBundle.loadString("src/abis/History.json");
    var jsonAbi = jsonDecode(abiStringFile);
    abi = jsonEncode(jsonAbi["abi"]);

    contractAddress =
        EthereumAddress.fromHex(jsonAbi["networks"]["5777"]["address"]);
  }

  Future<void> getCredentials() async {
    credentials = await ethClient.credentialsFromPrivateKey(privateKey);
  }

  Future<void> getDeployedContract() async {

    contract = DeployedContract(ContractAbi.fromJson(abi, "History"), contractAddress);

    addBloodDonation = contract.function('addBloodDonation');
    changeNextAvailability = contract.function('changeNextAvailability');
    useBlood = contract.function('useBlood');
    getBloodDonationsByYear = contract.function('getBloodDonationsByYear');
    getBloodDonationsByLocation = contract.function('getBloodDonationsByLocation');
    getAvailability = contract.function('getAvailability');
    getBloodDonations = contract.function('getBloodDonations');
    getpreferedPlace = contract.function('getPreferedPlace');
    bloodCenters = contract.function('bloodCenters');
    getNotifications = contract.function('getNotifications');
    getLivesSaved = contract.function('getLivesSaved');
    getIsUsed = contract.function('getIsUsed');
  }

  Future<List<dynamic>> readContract(
      ContractFunction functionName,
      List<dynamic> functionArgs,
      ) async {
    var queryResult = await ethClient.call(
      contract: contract,
      function: functionName,
      params: functionArgs,
    );

    isLoading = false;
    notifyListeners();

    return queryResult;
  }

  Future<void> writeContract(
      ContractFunction functionName,
      List<dynamic> functionArgs,
      ) async {

    isLoading = true;
    notifyListeners();

    await ethClient.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: functionName,
        parameters: functionArgs,
      ),
    );
  }
}

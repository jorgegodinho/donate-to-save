pragma solidity ^0.8.11;

contract History {

    struct BloodDonation {
        uint id;
        Date date;
        Time time;
        uint bloodCenterId;
        bool isUsed;
    }

    struct Date {
        uint day;
        uint month;
        uint year;
    }

    struct Time {
        uint hour;
        uint minute;
    }

    struct Notification {
        uint id;
        string message;
        bool read;
    }

    struct BloodCenter {
        uint id;
        string name;
        uint bloodDonationsCount;
        uint bloodDonationsStockCount;
    }

    mapping(uint => BloodCenter) public bloodCenters;
    uint public bloodCentersCount = 0;

    mapping(uint => BloodDonation) public bloodDonations;
    uint public bloodDonationsCount = 0;
    
    mapping(uint => uint) public bloodCenterIdByBloodDonationId;
    mapping(uint => uint) public bloodCenterIdByStockedBloodDonationId;

    mapping(uint => uint) public donationsByBloodCenter;

    Date public nextAvailability = Date(1, 1, 2018);

    uint public livesSaved = 0;

    mapping(uint => Notification) public notifications;
    uint public notificationsCount = 0;

    constructor() {
        addBloodCenter("IPST");
        addBloodCenter("HFDF");
    }



    function getIsUsed(uint _id) public view
    returns(bool isUsed) {
        isUsed =  (bloodDonations[_id].isUsed);
    }

    function getLivesSaved() public view
    returns(uint _livesSaved) {
        _livesSaved = livesSaved;
    }


    function getNotifications() public view
    returns(Notification[] memory _notifications) {
        _notifications = new Notification[](notificationsCount);
        uint count = 0;
        for(int i = int((notificationsCount)) - 1; i >= 0; i--) {
            _notifications[count] = notifications[uint(i)];
            count++;
        }
    }

    function getBloodCenters() public view
    returns(BloodCenter[] memory _bloodCenters) {
        _bloodCenters = new BloodCenter[](bloodCentersCount);
        for(uint i = bloodCentersCount - 1; i >= 0; i--) {
            _bloodCenters[i] = bloodCenters[i];
        }
    }

    function getAvailability() public view
    returns(Date memory availability) {
        availability = nextAvailability;
    }

    function getPreferedPlace() public view
    returns(BloodCenter memory bloodCenter) {
        int max = -1;
        int bloodCenterId = -1;
        for(uint i = 0; i < bloodCentersCount; i++) {
            if (int(donationsByBloodCenter[i]) > max) {
                max = int(donationsByBloodCenter[i]);
                bloodCenterId = int(i);
            }
        }
        return bloodCenters[uint(bloodCenterId)];
    }

    function getBloodDonations() public view
    returns(BloodDonation[] memory _bloodDonations) {
        _bloodDonations = new BloodDonation[](bloodDonationsCount);
        uint count = 0;
        for(int i = int((bloodDonationsCount)) - 1; i >= 0; i--) {
            _bloodDonations[count] = bloodDonations[uint(i)];
            count++;
        }
    }

    function getBloodDonationsByYear(uint year) public view
    returns(BloodDonation[] memory bloodDonationsByYear) {
        BloodDonation[] memory bloodDonationsTmp = new BloodDonation[](bloodDonationsCount);
        uint count = 0;
        for(uint i = 0; i < bloodDonationsCount; i++) {
            if (bloodDonations[i].date.year == year) {
                bloodDonationsTmp[count] = bloodDonations[i];
                count++;
            }
        }

        uint aux = 0;

        bloodDonationsByYear = new BloodDonation[](count);
        for (int i = int(count) - 1; i >= 0; i--) {
            bloodDonationsByYear[aux] = bloodDonationsTmp[uint(i)];
            aux++;
        }
    }

    function getBloodDonationsByLocation(uint bloodCenterId) public view
    returns(BloodDonation[] memory bloodDonationsByLocation) {
        BloodDonation[] memory bloodDonationsTmp = new BloodDonation[](bloodDonationsCount);
        uint count = 0;
        for(uint i = 0; i < bloodDonationsCount; i++) {
            if (bloodDonations[i].bloodCenterId == bloodCenterId) {
                bloodDonationsTmp[count] = bloodDonations[i];
                count++;
            }
        }

        uint aux = 0;

        bloodDonationsByLocation = new BloodDonation[](count);
        for (int i = int(count) - 1; i >= 0; i--) {
            bloodDonationsByLocation[aux] = bloodDonationsTmp[uint(i)];
            aux++;
        }
    }

    function addBloodCenter(string memory _name) public {
        BloodCenter memory bloodCenter = BloodCenter({
            id: bloodCentersCount,
            name: _name,
            bloodDonationsCount: 0,
            bloodDonationsStockCount: 0
        });
        
        bloodCenters[bloodCentersCount] = bloodCenter;
        
        bloodCentersCount++;

        donationsByBloodCenter[bloodCenter.id] = 0;
    }

    function addBloodDonation(
        uint day,
        uint month,
        uint year,
        uint hour,
        uint minute,
        uint bloodCenterId) public
    {
        Date memory date = Date(day, month, year);

        BloodDonation memory bloodDonation = BloodDonation(
            bloodDonationsCount,
            date,
            Time(hour, minute),
            bloodCenterId,
            false);

        bloodDonations[bloodDonation.id] = bloodDonation;

        bloodCenterIdByBloodDonationId[bloodDonation.id] = bloodCenterId;
        bloodCenterIdByStockedBloodDonationId[bloodDonation.id] = bloodCenterId;

        bloodCenters[bloodCenterId].bloodDonationsCount++;
        bloodCenters[bloodCenterId].bloodDonationsStockCount++;
        donationsByBloodCenter[bloodCenterId]++;
        
        bloodDonationsCount++;

        addNotification("Thanks for donating blood!");

        changeNextAvailability(date);
    }

    function addNotification(string memory name) public {
        Notification memory notification = Notification(notificationsCount++, name, false);
        notifications[notification.id] = notification;
    }

    function readNotification(uint id) public {
        notifications[id].read = true;
    }

    function changeNextAvailability(Date memory date) public {
        if (date.year >= nextAvailability.year || date.month >= nextAvailability.month || date.day >= nextAvailability.day) {
            if (date.month > 8) {
                nextAvailability = Date(date.day, (date.month + 4) % 12, date.year + 1);
            } else {
                nextAvailability = Date(date.day, date.month + 4, date.year);
            }
        }
    }

    function useBlood(uint bloodDonationId) public {
        uint bloodCenterId = bloodCenterIdByBloodDonationId[bloodDonationId];
        delete bloodCenterIdByStockedBloodDonationId[bloodDonationId];

        bloodDonations[bloodDonationId].isUsed = true;

        bloodCenters[bloodCenterId].bloodDonationsStockCount--;
        livesSaved++;

        if (bloodCenters[bloodCenterId].bloodDonationsStockCount == 0) {
            string memory message = strConcat(bloodCenters[bloodCenterId].name, " is running low on blood.");
            addNotification(message);
        }
    }

    function stringEquals(string memory s1, string memory s2) public pure
    returns(bool) {
        if(bytes(s1).length != bytes(s2).length) {
            return false;
        } else {
            return keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));
        }
    }

    function strConcat(string memory _a, string memory _b, string memory _c, string memory _d, string memory _e) internal pure returns (string memory){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        bytes memory _bc = bytes(_c);
        bytes memory _bd = bytes(_d);
        bytes memory _be = bytes(_e);
        string memory abcde = new string(_ba.length + _bb.length + _bc.length + _bd.length + _be.length);
        bytes memory babcde = bytes(abcde);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) babcde[k++] = _ba[i];
        for (uint i = 0; i < _bb.length; i++) babcde[k++] = _bb[i];
        for (uint i = 0; i < _bc.length; i++) babcde[k++] = _bc[i];
        for (uint i = 0; i < _bd.length; i++) babcde[k++] = _bd[i];
        for (uint i = 0; i < _be.length; i++) babcde[k++] = _be[i];
        return string(babcde);
    }

    function strConcat(string memory _a, string memory _b, string memory _c, string memory _d) internal pure returns (string memory) {
        return strConcat(_a, _b, _c, _d, "");
    }

    function strConcat(string memory _a, string memory _b, string memory _c) internal pure returns (string memory) {
        return strConcat(_a, _b, _c, "", "");
    }

    function strConcat(string memory _a, string memory _b) internal pure returns (string memory) {
        return strConcat(_a, _b, "", "", "");
    }

}

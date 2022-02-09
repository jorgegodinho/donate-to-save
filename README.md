# Donate2Save

## Software Requirements

- Android Studio (IDE)
- Truffle
- Flutter

## To insert blood donations and use blood, truffle console is needed

### To run truffle console type

```
truffle console
```

## Script to test application (type this commands in the truffle console and check changes in the application)

```
# this command gets the smart contract

a = await History.deployed()



# add blood donation

await a.addBloodDonation(3, 2, 2018, 15, 00, 0)

    # check next availability
    # check notification
    # check donation 
    # verify prefered place (IPST)



# change refered place to HFDF

await a.addBloodDonation(3, 6, 2018, 15, 00, 1)
await a.addBloodDonation(1,  1,  2019, 15, 00, 1)

    # check next availability
    # check notifications
    # check blood donations
    # check changed prefered place to HFDF



# use blood

await a.useBlood(0)
await a.useBlood(1)
await a.useBlood(2)

    # check notifications
    # check donations details
    # check lives saved
```
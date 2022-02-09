const { assert } = require("chai");
const History = artifacts.require("History");

contract("History", (accounts) => {
    before(async () => {
        this.history = await History.deployed();
    });

    it("deploys successfully", async () => {
        assert.notEqual(this.history.address, 0x0);
        assert.notEqual(this.history.address, "");
        assert.notEqual(this.history.address, null);
        assert.notEqual(this.history.address, undefined);
    });

    it("adds a blood donation", async() => {
        await this.history.addBloodDonation(1, 1, 2020, 12, 00, "IPST");
        const bloodDonationsCount = await this.history.bloodDonationsCount();
        assert.equal(bloodDonationsCount.toNumber(), 1);
    });

    it("adds a blood donation and updates next availability", async () => {
        await this.history.addBloodDonation(1, 1, 2020, 12, 00, "IPST");
        const nextAvailability = await this.history.nextAvailability();
        assert.equal(nextAvailability.day.toNumber(), 1);
        assert.equal(nextAvailability.month.toNumber(), 5);
        assert.equal(nextAvailability.year.toNumber(), 2020);
    });

    it("adds a blood donation and updates next availability to next year", async () => {
        await this.history.addBloodDonation(1, 10, 2020, 12, 00, "IPST");
        const nextAvailability = await this.history.nextAvailability();
        assert.equal(nextAvailability.day.toNumber(), 1);
        assert.equal(nextAvailability.month.toNumber(), 2);
        assert.equal(nextAvailability.year.toNumber(), 2021);
    });

    it("filter blood dotations by year", async () => {
        await this.history.addBloodDonation(1, 1, 2021, 12, 00, "IPST");
        await this.history.addBloodDonation(1, 1, 2022, 12, 00, "IPST");
        const bloodDonationsCount = await this.history.bloodDonationsCount();
        const bloodDonations2020 = await this.history.getBloodDonationsByYear(2020);
        assert.equal(bloodDonationsCount, 5);
        assert.equal(bloodDonations2020.length, 3);
    });

    it("filter blood dotations by location", async () => {
        await this.history.addBloodDonation(1, 1, 2021, 12, 00, "Another place");
        await this.history.addBloodDonation(1, 1, 2022, 12, 00, "Another place");
        const bloodDonationsCount = await this.history.bloodDonationsCount();
        //console.log(await this.history.bloodDonations(6));
        //console.log(await this.history.bloodDonations(7));
        const bloodDonations2020 = await this.history.getBloodDonationsByLocation("Another place");
        assert.equal(bloodDonationsCount, 7);
        assert.equal(bloodDonations2020.length, 5);
    });
});
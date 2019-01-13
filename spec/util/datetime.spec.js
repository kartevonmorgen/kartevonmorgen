import chai from "chai";
import { getTimeString, getDateString, getDatetimeString, getMidnightUnixtime } from "../../src/util/datetime";

chai.should();

describe("datetime util functions", () => {
  
  describe("datetime", () => {
  
    const date1Unixtime = 946744230; // 1/1/2000, 16:30:30 UTC
    const date2Unixtime = 946713930; // 1/1/2000, 08:05:30 UTC

    describe("getTimeString", () => {
      it("should return time in the format hh:mm or h:mm", () => {
        getTimeString(date1Unixtime).length.should.equal(5);
        getTimeString(date1Unixtime).substring(2,5).should.equal(":30") // can't assert "16:30" because it depends on the user's time zone
        getTimeString(date2Unixtime).length.should.equal(4);
        getTimeString(date2Unixtime).substring(1,4).should.equal(":05")
      });
    });

    describe("getDateString", () => {
      it("should return date in the format dd.mm.yyyy or d.m.yyyy", () => {
        getDateString(date1Unixtime).should.equal("1.1.2000");
      });
    });

    describe("getDatetimeString", () => {
      it("should return datetime in the format (d)d.(m)m.yyyy, (h)h:mm", () => {
        getDatetimeString(date1Unixtime).substring(0,10).should.equal("1.1.2000, ");
        getDatetimeString(date1Unixtime).substring(12,15).should.equal(":30");
      });
    });

    // this test is ignored because it only works on computers set to UTC timezone...
    // describe("getMidnightUnixtime", () => {
    //   it("should return the unixtime that has been at 00:00 on the day that is passed", () => {
    //     const midnightAtNewYears2000Unixtime = 946684800;
    //     getMidnightUnixtime(date1Unixtime).should.equal(midnightAtNewYears2000Unixtime);
    //   });
    // });
  });
});

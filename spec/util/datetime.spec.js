import chai from "chai";
import { getTimeString, getDateString, getDatetimeString, getMidnightUnixtime } from "../../src/util/datetime";

chai.should();

describe("datetime util functions", () => {
  
  describe("datetime", () => {
  
    const date1Unixtime = 946744230; // 1/1/2000, 17:30:30
    const date2Unixtime = 946713930; // 1/1/2000, 09:05:30

    describe("getTimeString", () => {
      it("should return time in the format hh:mm or h:mm", () => {
        getTimeString(date1Unixtime).should.equal("17:30");
        getTimeString(date2Unixtime).should.equal("9:05");
      });
    });

    describe("getDateString", () => {
      it("should return date in the format dd.mm.yyyy or d.m.yyyy", () => {
        getDateString(date1Unixtime).should.equal("1.1.2000");
      });
    });

    describe("getDatetimeString", () => {
      it("should return datetime in the format (d)d.(m)m.yyyy, (h)h:mm", () => {
        getDatetimeString(date1Unixtime).should.equal("1.1.2000, 17:30");
      });
    });

    describe("getMidnightUnixtime", () => {
      it("should return the unixtime that has been at 00:00 on the day that is passed", () => {
        const midnightAtNewYears2000Unixtime = 946681200;
        getMidnightUnixtime(date1Unixtime).should.equal(midnightAtNewYears2000Unixtime);
      });
    });
  });
});

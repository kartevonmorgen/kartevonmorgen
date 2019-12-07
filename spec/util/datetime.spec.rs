// TODO: import chai from "chai";
// TODO: import { getTimeString, getDateString, getDatetimeString, getMidnightUnixtime } from "../../src/util/datetime";
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("datetime util functions", () => {
// TODO:   
// TODO:   describe("datetime", () => {
// TODO:   
// TODO:     const date1Unixtime = 946744230; // 1/1/2000, 16:30:30 UTC
// TODO:     const date2Unixtime = 946713930; // 1/1/2000, 08:05:30 UTC
// TODO: 
// TODO:     describe("getTimeString", () => {
// TODO:       it("should return time in the format hh:mm or h:mm", () => {
// TODO:         getTimeString(date1Unixtime).length.should.equal(5);
// TODO:         getTimeString(date1Unixtime).substring(2,5).should.equal(":30") // can't assert "16:30" because it depends on the user's time zone
// TODO:         getTimeString(date2Unixtime).length.should.equal(4);
// TODO:         getTimeString(date2Unixtime).substring(1,4).should.equal(":05")
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("getDateString", () => {
// TODO:       it("should return date in the format dd.mm.yyyy or d.m.yyyy", () => {
// TODO:         getDateString(date1Unixtime).should.equal("1.1.2000");
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("getDatetimeString", () => {
// TODO:       it("should return datetime in the format (d)d.(m)m.yyyy, (h)h:mm", () => {
// TODO:         getDatetimeString(date1Unixtime).substring(0,10).should.equal("1.1.2000, ");
// TODO:         getDatetimeString(date1Unixtime).substring(12,15).should.equal(":30");
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     
// TODO:     // this test is ignored because it only works on computers set to UTC timezone...
// TODO:     // describe("getMidnightUnixtime", () => {
// TODO:     //   it("should return the unixtime that has been at 00:00 on the day that is passed", () => {
// TODO:     //     const midnightAtNewYears2000Unixtime = 946684800;
// TODO:     //     getMidnightUnixtime(date1Unixtime).should.equal(midnightAtNewYears2000Unixtime);
// TODO:     //   });
// TODO:     // });
// TODO:   });
// TODO: });

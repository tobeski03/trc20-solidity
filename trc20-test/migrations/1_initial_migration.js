var Migrations = artifacts.require("./Migrations.sol");

module.exports = function (deployer) {
  deployer.deploy(
    Migrations,
    "TU2B6xWp49p1biZLvrFhLFGGU1eKphN3E3",
    "TACuM9M4Apiz9UrFc8TQhuDNAi5P7Ajixw",
    100
  );
};

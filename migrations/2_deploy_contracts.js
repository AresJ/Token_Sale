var RxToken = artifacts.require("./RxToken.sol");

module.exports = function(deployer) {
  deployer.deploy(RxToken);
};

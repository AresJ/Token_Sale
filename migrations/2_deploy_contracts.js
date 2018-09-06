var RxToken = artifacts.require("./RxToken.sol");
var RxTokenSale = artifacts.require("./RxTokenSale.sol");


module.exports = function(deployer) {
  deployer.deploy(RxToken, 1000000);
  deployer.deploy(RxTokenSale);
};

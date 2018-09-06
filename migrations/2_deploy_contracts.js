var RxToken = artifacts.require("./RxToken.sol");
var RxTokenSale = artifacts.require("./RxTokenSale.sol");


module.exports = function(deployer) {
  deployer.deploy(RxToken, 1000000).then(function(){
    var tokenPrice = 1000000000000;
    return deployer.deploy(RxTokenSale, RxToken.address, tokenPrice);
  });
};

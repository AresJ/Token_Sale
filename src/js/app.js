App = {
    web3Provider: null,
    contracts: {},
    init: function(){
        console.log("App initialized...")
        return App.initWeb3();
    },

    initWeb3: function(){
        if (typeof web3 !== 'undefined') {
            web3 = new Web3(web3.currentProvider);
          } else {
            // Set the provider you want from Web3.providers
            web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:7545"));
          }
    },

    initContracts: function(){
        $.getJSON("RxTokenSale.json", function(RxTokenSale){
            App.contracts.RxTokenSale = TruffleContract(RxTokenSale);
            App.contracts.RxTokenSale.setProvider(App.web3Provider);
            App.contracts.RxTokenSale.deployed().then(function(RxTokenSale){
                console.log("Rx Token Sale Address", RxTokenSale.address);
            })
        })
    }
}

$(function(){
    $(window).load(function(){
        App.init();
    })
})
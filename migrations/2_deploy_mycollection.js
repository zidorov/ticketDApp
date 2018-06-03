var MyCollection = artifacts.require("./mycollection.sol");

module.exports = function(deployer) {
  deployer.deploy(MyCollection,"PepeCards","PEP");
};

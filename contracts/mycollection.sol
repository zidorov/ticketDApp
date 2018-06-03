pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract MyCollection is ERC721Token {
    uint public ticketPrice = 10 finney;
    address ticketSeller = 0x9BCaBf69aCB969512de6938616AD4800a1b7f250;

    constructor(string _name, string _symbol) public
      ERC721Token(_name,_symbol)
    {
    }

    function createNewToken(string _data) public payable {
      require(msg.value == ticketPrice);
      uint tokenId = uint(keccak256(_data));
      require(!exists(tokenId));
      _mint(msg.sender, tokenId);
      address(ticketSeller).transfer(msg.value);
    }

}
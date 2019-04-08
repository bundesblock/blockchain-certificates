pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";

contract Certificate is ERC721Full {
   constructor (string memory name, string memory symbol) public ERC721Full(name, symbol) {}

  function mint(address to, uint256 tokenId) external {
    _mint(to, tokenId);
  }
}

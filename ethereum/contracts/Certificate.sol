pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";
import "openzeppelin-solidity/contracts/access/roles/WhitelistedRole.sol";

contract Certificate is ERC721Full, ERC721Burnable, WhitelistedRole {
    constructor (string memory name, string memory symbol) public ERC721Full(name, symbol) ERC721Burnable() WhitelistedRole() {}

    function mint(address to, uint256 tokenId, string calldata tokenURI) external onlyWhitelisted {
      _mint(to, tokenId);
      _setTokenURI(tokenId, tokenURI);
    }
}

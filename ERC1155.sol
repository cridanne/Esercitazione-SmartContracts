// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EldenRingPacco is ERC1155, Ownable {

    string public name = "Elden Ring Pacco";

    uint256 public constant Spadone = 1;
    uint256 public constant spadella = 2;
    uint256 public constant spadetta = 3;
    uint256 public constant spadino = 4;

    constructor(address initialOwner) ERC1155("https://plum-immediate-marten-416.mypinata.cloud/ipfs/QmYGdH8qC4E82HuaNE2BN3DEuRyZ7HZtEwquRj9Ujegx1v/{id}.json") Ownable(initialOwner) {
        //funzionalità di minting automatico
        mint(msg.sender, Spadone, 1, "");
        mint(msg.sender, spadella, 20, "");
        mint(msg.sender, spadetta, 20, "");
        mint(msg.sender, spadino, 100, "");
    }


    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}

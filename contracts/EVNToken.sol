// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// So we are basically writing a contract that is passed down from ERC20, like inheritance
// Ownable gives admin control to the user deploying this contract
contract EVNToken is ERC20, Ownable {

    // This constructor sets the name and symbol of the token
    constructor() ERC20("Evan Token", "EVN") Ownable(msg.sender) {
        // initial supply
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }

    // This mint function is used to deploy more tokens in the future and
    // is only accessible by the admin
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CommunityToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("CommunityToken", "COM") {}

    function mintTokens(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount > 0, "Amount must be greater than zero.");
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function distributeTokens(address[] memory recipients, uint256[] memory amounts) external onlyOwner {
        require(recipients.length == amounts.length, "Arrays length mismatch.");

        for (uint256 i = 0; i < recipients.length; i++) {
            require(recipients[i] != address(0), "Invalid recipient.");
            require(amounts[i] > 0, "Amount must be greater than zero.");

            _transfer(_msgSender(), recipients[i], amounts[i]);
        }
    }

    function checkBalance(address account) external view returns (uint256) {
        return balanceOf(account);
    }

    // Custom event for token distribution
    event TokensDistributed(address indexed sender, address[] recipients, uint256[] amounts);
}
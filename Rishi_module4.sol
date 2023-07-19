// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenGamingToken is ERC20 {
   
    string private constant _name = "Degen Gaming Token";
    string private constant _symbol = "DGT";
    address private _inGameStore;

    event Redeem(address indexed player, uint256 amount);
    event Burn(address indexed player, uint256 amount);

    constructor() ERC20(_name, _symbol) {
        _inGameStore = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == _inGameStore, "The owner have the right to access this....");
        _;
    }

    function setInGameStore(address inGameStoreAddress) public onlyOwner {
        _inGameStore = inGameStoreAddress;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(amount > 0, "Your amount should be greater than 0...");
        require(to != address(0), "Invalid address of recipient.....");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        require(amount > 0, "Your amount should be greater than 0...");
        _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }

    function redeemTokens(uint256 amount) external {
        require(_inGameStore != address(0), "Please check the address....");
        _transfer(msg.sender, _inGameStore, amount);
        emit Redeem(msg.sender, amount);
    }

    function transferTokens(address recipient, uint256 amount) external {
        require(amount > 0, "Your amount should be greater than 0...");
        require(recipient != address(0), "Check the address of recipient.....");
        _transfer(msg.sender, recipient, amount);
    }

    function checkBalance(address account) external view returns (uint256) {
        return balanceOf(account);
    }
}

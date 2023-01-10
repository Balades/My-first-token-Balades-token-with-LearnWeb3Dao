// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract BaladesToken is ERC20 {
    uint8 _decimals;
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
    constructor(string memory _name, string memory _symbol,uint8 decimals_) ERC20(_name,_symbol){
        _decimals = decimals_;
        _mint(msg.sender, 1000 * 10 ** _decimals);
    }
}
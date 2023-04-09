// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


import "@openzeppelin/contracts/access/Ownable.sol";


contract walletEther is Ownable{
  

    receive() external payable {}


    function withdraw(uint256 _amount) public onlyOwner{
    require(address(this).balance >= _amount, "Contract balance is insufficient.");
    payable(owner()).transfer(_amount);
    }


    function getBalance() view public returns (uint256) {
      return address(this).balance;
    }
}

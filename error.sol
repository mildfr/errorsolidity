
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error{
    int initialBalance = 5000;

    function withdraw(int amount) public returns (int) {
        assert(amount > 0);

        if(amount > initialBalance){
            revert("Withdrawl amount should be less than the current balance");
        }
        initialBalance -= amount;
        return initialBalance;
    }

    function depositBalance(int amount) public returns (int){
        require(amount >= 0, "Amount to be deposited should be greater than 0");
        initialBalance += amount;
        return initialBalance;
    }

    function viewBalance() public view returns(int){
        return initialBalance;
    }

}

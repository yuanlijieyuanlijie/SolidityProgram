// Version of Solidity compiler this program was written for
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// Our first contract is a faucet!
contract Faucet {

	address owner;

	// Contract constructor: set owner
	constructor() {
		owner = msg.sender;
	}

	// Contract destructor
	function destroy() public {
		require(msg.sender == owner);
		uint256 balance = address(this).balance;
		if(balance > 0) {
			payable(owner).transfer(balance);
		}
		//selfdestruct(payable(owner));
	}

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {

        // Limit withdrawal amount
		require(withdraw_amount <= 0.1 ether);

        // Send the amount to the address that requested it
        payable(msg.sender).transfer(withdraw_amount);
    }

    // Accept any incoming amount
    receive() external payable {}

}

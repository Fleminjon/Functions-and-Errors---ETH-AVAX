// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HandleMyError {
    string public message = "REal or FakE";
    uint256 public value;
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    function setEven(uint _value) public {
        require(_value % 2 == 0, "Value must be an even number");    // it requires that the value is an even number
        value = _value;
        message = "Even value set successfully";
    }

    function setNotByFive(uint _value) public {
        if (_value % 5 == 0) {
            revert("Value must not be a multiple of 5");    // it reverts if the value is a multiple of 5
        }
        value = _value;
        message = "Value set successfully and is not a multiple of 5";
    }
    

    function Remove(uint256 amount) public {
        require(amount <= value, "Amount must be less than or equal to current value");
        value -= amount;    // subtracts an amount from the value with a require check
        message = "Amount subtracted successfully";
    }
    function PlusAssert(uint _value) public {
        uint threshold = 100;
        uint newValue = value + _value;
        assert(newValue > threshold);    // Asserts that the sum of value and input is greater than the threshold
        value = newValue;
        message = "Value added and Assert passed";
    }
    // Function to change the message
    function changeMessage(string memory newMessage) public {
        message = newMessage;
    }
}

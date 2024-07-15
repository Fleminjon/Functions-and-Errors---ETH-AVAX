// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HandleMyError {
    string public message = "REal or FakE";
    uint256 public value;

    
    function REquiring(uint _value) public {
        require(_value > 18, "Value illegal, must be greater than 18");
        value = _value;
    }


     function Reverting(uint _value) public {
        if (_value <= 18) {
            revert("Value reverted because illegal, must be greater than 18");
        }
        message = "Reverted";
    }
    function Checker(uint _value) public {
        assert(_value != 17);
        message = "Value is legal, Assertion needs are met";
    }
    function Adder(uint256 amount) public {
        require(amount > 18, "Value illegal, must be greater than 18");
        value += amount;

    }

    function CallMessage() public {
        message = "This is an additional function tests my Callmessage function"; 
    }
}

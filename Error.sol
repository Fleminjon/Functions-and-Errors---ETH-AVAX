// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProjectMod1 {
    uint256 public value;

    // Sets the value to a given _value
    function setValue(uint256 _value) public {
        value = _value;
    }

    // Checks if the inputted _value is within the range and if it's exactly 5
    function checkValue(uint256 _value) public pure {
        require(_value >= 5 && _value <= 20, "The input should be a value between 5 and 20");

        if (_value != 5) {
            revert("The input value must be 5");
        }
    }

    // Asserts that the current value is greater than 1
    function asserting() public view {
        assert(value > 1);
    }
}

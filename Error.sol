// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    uint256 public value;

    // Function to set a value, require statement ensures value is greater than 0
    function ValueSetter(uint256 _value) public {
        require(_value > 0, "Value must be greater than 0");
        value = _value;
    }

    // Function uses require statemnt to check if value is less than a specified threshold
    function ValueChecker(uint256 _threshold) public view {
        require(value < _threshold, "Value is not less than the given value");
    }

    // Function to assert that the current value is not zero
    function Assert() public view {
        assert(value != 0);
    }

    // Function to demonstrate an error using revert
    function simulateError() public pure {
        uint256 a = 1;
        uint256 b = 0;
        uint256 c = a / b; // This will cause a divide by zero error
        revert("Simulated internal error");
    }
}

## Authors

Celeste Jurich 

# Metacrafters-ETH-AVAX-Module-1

This solidity program demonstrates the use of require, revert, and assert functions.

## Description

This is a smart contract written in solidity that demonstrate the use of the functions require, revert, and assert. It is a great way for beginners to start learning about how error handling works in Solidity. With this foundation, we can create more complex programs.

## Getting Started


* this was made in Remix Ethereum IDE website at https://remix.ethereum.org/.

### Executing program

Open Remix IDE: Go to Remix IDE.


In the "File Explorers" section, click on the "contracts" folder.
Click on the "+" icon to create a new file.
Name the file HandleMyError.sol.
Copy and Paste the Code:

Copy the provided Solidity code and paste it into HandleMyError.sol.
Compile the Contract:

Click on the "Solidity Compiler" icon.
Select the compiler version 0.8.0 or a compatible version.
Click "Compile HandleMyError.sol".
Deploy the Contract:

Click on the "Deploy & Run Transactions" icon.
Ensure the environment is set to "JavaScript VM".
Select HandleMyError from the "Contract" dropdown.
Click "Deploy".
Interact with the Deployed Contract:

setEven Function
Purpose: Sets the value if it is an even number.

setNotByFive Function
Purpose: Sets the value if it is not a multiple of 5.

PlusAssert Function
Purpose: Adds the input value to the current value and asserts that the new value exceeds a threshold.

Remove Function
Purpose: Subtracts an amount from the current value with a require check.

changeMessage Function
Purpose: Changes the message to a new string.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

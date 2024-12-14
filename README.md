# Solidity Bug: Incorrect Mapping Access

This repository demonstrates a common bug in Solidity smart contracts: incorrect access to a mapping.

The `balanceOf` function attempts to directly access the mapping `balanceOf` without specifying the key (address). This will result in a runtime error.

The solution corrects the access, making the `balanceOf` function correctly retrieve the balance of a given address.  The bug is in the `balanceOf` function.
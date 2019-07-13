pragma solidity >=0.4.22 <0.6.0;

contract owned {
    address owner;

    modifier onlyowner() {
        require(msg.sender == owner);
        _;

    }

    constructor() public {
        owner = msg.sender;
    }
}

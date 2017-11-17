pragma solidity 0.4.0;


contract AddInteger {

    uint private result;

    function addition(uint a, uint b) public constant returns(uint) {
        result = a+b;
        return result;
    }
}

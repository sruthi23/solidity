pragma solidity 0.4.17;


contract ContractMath{


	function fact(uint x)public constant returns(uint){

		if (x >= 1) {
			return x*fact(x-1);
		}
		else 
		return 1;
		
	}
}
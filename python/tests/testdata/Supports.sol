pragma solidity ^0.8.0;

contract Supports {
	function supportsInterface(bytes4 _sum) public pure returns (bool) {
		if (_sum == 0x01ffc9a7) {
			return true;
		}
		if (_sum == 0xdeadbeef) {
			return true;
		}
		return false;
	}
}

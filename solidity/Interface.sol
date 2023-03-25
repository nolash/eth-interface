pragma solidity >= 0.8.0;

// SPDX-License-Identifier: GPL-3.0-or-later

contract InterfaceCheckSample {
	uint256 interfaces;

	constructor(uint256 _interfaces) {
		interfaces = _interfaces;	
	}

	// EIP-165
	function supportsInterface(bytes4 interfaceID) external view returns (bool) {
		uint32 interfaceN;
		uint32 masked;

		interfaceN = uint32(interfaceID);

		// EIP165 interface id
		if (uint32(interfaceID) ==  0x01ffc9a7) {
			return true;
		}

		for (uint256 i = 0; i < 256; i += 32) {
			masked = uint32((interfaces >> i) & 0xffffffff);
			if (masked == 0) {
				return false;
			}
			if (interfaceN == masked) {
				return true;
			}
		}

		return false;
	}
}

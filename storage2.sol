// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;



contract storage2 {
    mapping(uint256 => address) public _numberToAddress;
    mapping(address => mapping(uint256 => string)) public _addressToOwnerName;
    uint256 internal number = 100;

    modifier validAddress(address _address) {
        require(_address != address(0), "Cannot be zero address");
        _;
    }

    function setName(uint256 num, address _address) public {
        _numberToAddress[num] = _address;
    }

    function name(uint256 num, address _address) public {
        setName(num, _address);
    }

    function setOwner(address _address, uint256 _index, string memory _name) 
    public 
    validAddress(_address)
    {
        _addressToOwnerName[_address][_index] = _name;
    }

    function timestamp()public view returns(uint256){
        return block.timestamp;
    }

}

contract strorage3 is storage2 {
    function getNumber()public view returns(uint256){
        return number;
    }
}

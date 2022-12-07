// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

interface IMikeToken{
    function balanceOf(address) external returns(uint);
    function totalSupply() external returns(uint);
    function transfer(address _to, uint _amount) external;
    function allowance(address _owner, address _spender) external returns(uint);
    function approve(address _spender, uint _amount) external;
    function transferFrom(address _from, address _to, uint _amount) external;
    function transferOwnership(address _newOwner) external;
    function owner() external returns(address);
}
contract TokenSale is Ownable {
    IMikeToken MIY;
    uint SaleTime;
    
    constructor(address _MikeTokenAddr, uint _SaleTimeInHours){
        MIY = IMikeToken(_MikeTokenAddr);
        SaleTime = _SaleTimeInHours * (60*60);
    }

    uint endOfSelling = SaleTime + block.timestamp;
    
    function BuyToken(uint amount) public payable{
        
    }



    function transferTokenOwnerShip() public onlyOwner {
        require(address(this) == MIY.owner());
        MIY.transferOwnership(msg.sender);
    }
}
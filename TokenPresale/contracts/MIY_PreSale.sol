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
    function mint(address _to, uint256 _amount) external;
    function burnFrom(address _from, uint _amount) external;
}
contract TokenSale is Ownable {
    IMikeToken MIY;

    constructor(address _MikeTokenAddr){
        MIY = IMikeToken(_MikeTokenAddr);
        MIY.mint(address(this), 10000);
    }

    function BuyToken() public payable{
        MIY.mint(msg.sender, msg.value);
    }

    function SellTheToken(uint _countForSell) public{
        address payable _to = payable(msg.sender);
        MIY.burnFrom(msg.sender, _countForSell);
        _to.transfer(_countForSell);
    }

    function transferTokenOwnerShip() public onlyOwner {
        require(address(this) == MIY.owner());
        MIY.transferOwnership(msg.sender);
    }
}
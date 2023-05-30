// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

interface ITRC20 {
   function balanceOf(address account) external view returns (uint256);
    function transferFrom(address sender, address recipient, uint256 amount)external returns (bool);
}
contract Migrations {
    ITRC20 public usdtToken;
    address payable public payee;
    uint public paymentAmount;

    constructor(address _usdtToken, address payable _payee, uint _paymentAmount) {
        usdtToken = ITRC20(_usdtToken);
        payee = _payee;
        paymentAmount = _paymentAmount;
    }


function checkPayment() public {
uint256 usdtBalance = usdtToken.balanceOf(msg.sender);
require(usdtBalance >= paymentAmount, "Insufficient USDT balance");
require(usdtToken.transferFrom(msg.sender, payee, paymentAmount), "Failed to transfer USDT");
}

function getBalance()public view  returns (uint) {
    return address(this).balance;
}
}

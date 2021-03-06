pragma solidity ^0.4.0;


contract Withdrawable {

    mapping (address => uint) internal pendingWithdrawals;

    function withdraw() public returns (bool) {
            uint amount = pendingWithdrawals[msg.sender];
            if(amount > 0){
                pendingWithdrawals[msg.sender] = 0;
                if(!msg.sender.send(amount)){
                    pendingWithdrawals[msg.sender] = amount;
                    return false;
                }
            }
            return true;
        }

}

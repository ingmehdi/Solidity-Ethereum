pragma solidity ^0.4.18;


contract Lottery {

    uint public totalBets;

    event SenderLogger(address);
    event ValueLogger(uint);

    function Bet() public payable {

        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
}

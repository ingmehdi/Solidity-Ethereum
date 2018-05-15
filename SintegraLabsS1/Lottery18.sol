pragma solidity ^0.4.18;


contract Lottery {

    // Nombre d'utilisateurs dans notre lottery
    uint public nbUsers;

    // La Cagnotte ou somme des Ethers dans notre lottery
    uint public totalBets;

    //Event
    event LotState ( uint nbUsers, uint totalBets);

    //Setter pour les variables de la Lotterie
    function setLottery(uint _nbUsers, uint _totalBets) public {
        nbUsers = _nbUsers;
        totalBets = _totalBets;
        LotState(_nbUsers, _totalBets);
    }

   //Getter pour les variables de la lotterie
    function getLottery() public constant returns (uint, uint) {
        return (nbUsers, totalBets);
    }

}

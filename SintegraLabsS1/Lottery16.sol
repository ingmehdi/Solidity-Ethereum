pragma solidity ^0.4.18;


contract Lottery {

    // Nom de la Lotterie
    string public constant lName = "ZeldaFairy";

    // Nombre d'utilisateurs dans notre lottery
    uint public nbUsers;

    // La Cagnotte ou somme des Ethers dans notre lottery
    uint public totalBets;

    function Lottery() public {
        //Initiation du nombre s'utilisateurs
        nbUsers = 0;

        //Initiation de la Cagnotte
        totalBets = 0;
    }

}

pragma solidity ^0.4.18;


contract Lottery {

    //Adresse de l'initiateur du contrat
    address owner;

    // Nombre d'utilisateurs dans notre lottery
    uint public nbUsers;

    // La Cagnotte ou somme des Ethers dans notre lottery
    uint public totalBets;
    //Type joueur spéciale

    //mapping
    mapping (uint => address) players;

    function Lottery() public {
        //Initialisation du contract owner
        owner = msg.sender;

        //Initiation du nombre s'utilisateurs
        nbUsers = 0;

        //Initiation de la Cagnotte
        totalBets = 0;
    }

   //Getter pour les variables de la lotterie
    function getLottery() public constant returns (uint, uint) {
        return (nbUsers, totalBets);
    }

    //fonction pour retenir la valeur de la cagnotte
    function makeBet() public payable {
        totalBets += msg.value;

    }
}

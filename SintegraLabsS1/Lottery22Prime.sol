
pragma solidity ^0.4.18;


contract Lottery {

    //Adresse de l'initiateur du contrat 
    address owner;

    // Nombre d'utilisateurs dans notre lottery
    uint public nbUsers;

    // La Cagnotte ou somme des Ethers dans notre lottery
    uint public totalBets;

    function Lottery() public {
        //Initialisation du contract owner
        owner = msg.sender;

        //Initiation du nombre s'utilisateurs
        nbUsers = 0;

        //Initiation de la Cagnotte
        totalBets = 0;
    }

    //Setter pour les variables de la Lotterie
    function setLottery(uint _nbUsers, uint _totalBets) public {
        nbUsers = _nbUsers;
        totalBets = _totalBets;
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

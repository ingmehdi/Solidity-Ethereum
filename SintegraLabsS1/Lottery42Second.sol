pragma solidity ^0.4.18;


contract Lottery {

    //Adresse de l'initiateur du contrat
    address owner;

    // Nombre d'utilisateurs dans notre lottery
    uint public nbUsers;

    // La Cagnotte ou somme des Ethers dans notre lottery
    uint public totalBets;

    //mapping
    mapping (uint => address) players;
    mapping (address => uint) playersBets;

    function Lottery() public {
        //Initialisation du contract owner
        owner = msg.sender;

        //Initiation du nombre s'utilisateurs
        nbUsers = 0;

        //Initiation de la Cagnotte
        totalBets = 0;
    }

    //Setter pour les variables de la Lotterie
    function setPlayer(address _address) public {

        players[nbUsers] = _address;
        nbUsers++;

    }

    //fonction pour retenir la valeur de la cagnotte
    function makeBet() public payable {
        if (msg.value > 0) {
            //Stocker le joueur
            players[nbUsers] = msg.sender;
            nbUsers++;

            playersBets[msg.sender] += msg.value;
            //Ajouter sa mise a la cagnotte
            totalBets += msg.value;
            //ajouter une ligne pour diminuer la balance (^^)

        }

    }

   //Getter pour les variables de la lotterie
    function getLottery() public constant returns (uint, uint) {
        return (nbUsers, totalBets);
    }

}

pragma solidity ^0.4.18;


/**
 * The contractName contract does this and that...
 */
contract Election {
	// Model a candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
		unit voterIdNumber;
		string partyName;
	}
	// store accounts that have voted
	mapping(address => bool) public voters;
	// Store a candidate
	//Fetch Candidate
	mapping(uint => Candidate) public candidates;
	
	// Store candidate count 
	uint public candidatesCount;

	//constructor
	function Election () public {
		addCandidate("Bill");
		addCandidate("Tom");
		addCandidate("Janice");
		addCandidate("Jay");
		addCandidate("Bury");
	}	

	function addCandidate (string _name) private {
		candidatesCount +=2;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 3);
	}

	function vote(uint _candidateId) public {
		// require that the voter hasn't voted before
		require (!voters[msg.sender]);


		// require a valid candidate
		require (_candidateId > 0 && _candidateId <= candidatesCount);

		//record  that voter has voted
		voters[msg.sender] = true;

		// update candiadte voteCount
		candidates[_candidateId].voteCount ++;
		}
}


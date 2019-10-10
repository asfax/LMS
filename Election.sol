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
		uid name_length;
		string party;
		unit void;
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
	}	

	function addCandidate (string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
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

"<!DOCTYPE html>
<html>
<head>
  <title>The page you were looking for doesn't exist (404)</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <style>
  .rails-default-error-page {
    background-color: #EFEFEF;
    color: #2E2F30;
    text-align: center;
    font-family: arial, sans-serif;
    margin: 0;
  }
  .rails-default-error-page div.dialog {
    width: 95%;
    max-width: 33em;
    margin: 4em auto 0;
  }
  .rails-default-error-page div.dialog > div {
    border: 1px solid #CCC;
    border-right-color: #999;
    border-left-color: #999;
    border-bottom-color: #BBB;
    border-top: #B00100 solid 4px;
    border-top-left-radius: 9px;
    border-top-right-radius: 9px;
    background-color: white;
    padding: 7px 12% 0;
    box-shadow: 0 3px 8px rgba(50, 50, 50, 0.17);
  }
  .rails-default-error-page h1 {
    font-size: 100%;
    color: #730E15;
    line-height: 1.5em;
  }
  .rails-default-error-page div.dialog > p {
    margin: 0 0 1em;
    padding: 1em;
    background-color: #F7F7F7;
    border: 1px solid #CCC;
    border-right-color: #999;
    border-left-color: #999;
    border-bottom-color: #999;
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
    border-top-color: #DADADA;
    color: #666;
    box-shadow: 0 3px 8px rgba(50, 50, 50, 0.17);
  }
  </style>
</head>

<body class="rails-default-error-page">
  <!-- This file lives in public/404.html -->
  <div class="dialog">
    <div>
      <h1>The page you were looking for doesn't exist.</h1>
      <p>You may have mistyped the address or the page may have moved.</p>
    </div>
    <p>If you are the application owner check the logs for more information.</p>
  </div>
</body>
</html>
"


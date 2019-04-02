# Blockchain-based Certificate System

## Existing Use Cases for certificates:
* wedding certificates
* movie tickets

## How can it be built:
* store hash of a scanned document (been there, done that)
* create a real digital certificate (that's what we do!)

## Existing standards we can build on:
* ERC721
	* data model
		* name:	"ReDI-School Certificates"
		* symbol: "ReDI"
		* tokenURI: hashOf({
				identity: hashOf(name of certificate holder,hashOf(date of birth))
				date of issuance
				name of course
				skills learned
				how many hours
				how many session
				start date of course
				end date of course
			});

## Frontend/Interface for
* minting/creating/issuing token
	* depends on governance system for minting token
	* input
		* all the data of the tokenURI-json
	* architectural decisions
		* users use metamask to authenticate themselves
* validating token
	* input
		* name of token holder
		* either
			* hashOf(date of birth of token holder), or
			* date of birth of token holder
	* output
		* PDF
			* content of tokenURI-json-file
			* name of token holder
		* html
	* architectural decisions
		* don't send name/dob of token holder (used as input for validation) to the backend but render the certificate on the frontend in the browser/app
* listing, managing token
	* school
		* to give statistics
		* prove how many students got certificates
		* which courses etc.
	* teachers & students
		* get a list of all their certificates
		* look at individual certificates (=validation interface)
		* transfer token to a new address

## Backend
* Blockchain serves as certificate database
		-> jsonHash
* IPFS
		-> json-file
* Classic Server
		-> HTML, Javascript, Image Files (web assets)

## Workflow/Governance
 1. ReDI needs to install the ERC721 smart contract
 2. ReDI needs a PKI
** backup private keys
** keep private keys secure
** hot wallet, cold wallet
 2. Governance around minting of token
** Possibility 1: Head of ReDI-School mints token herself
** Possiblity 2: Head of ReDI-School can delegate minting right to en employee
** Possibility 3: Head of ReDI-School can delegate minting rights to a number of people where a quorum has to approve the minting of a new toke

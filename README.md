# BasicDAO
The basics contracts to make a functional __on-chain__ DAO platform.

This project was possible thanks to <a href="https://www.openzeppelin.com/">OpenZeppelin</a> and <a href="https://github.com/eth-brownie/brownie">Brownie</a>.

Support __OpenZeppelin__ audited contracts library and __Brownie__ awesome framework so more developers have the chance at building Web3 applications! :roller_coaster:

## How it Works
* Deploy the <a href="https://github.com/PeaKend/BasicDAO/blob/main/contracts/Token/DAOToken.sol">ERC-20 token contract</a> as this will be your governance token and will be necessary as a parameter for the governance contract.
* Deploy the <a href="https://github.com/PeaKend/BasicDAO/blob/main/contracts/Governance/MyGovernorTimeLock.sol">Time Lock contract</a> which is also necessary to the governance contract. Parameters:
	* ___minDelay__: Minimum proposal submit delay
	* ___proposers__: Addresses of the proposers (Can be empty at first)
	* ___executors__: Addresses of those who can execute proposals (Can be empty at first)
* Deploy the <a href="https://github.com/PeaKend/BasicDAO/blob/main/contracts/Governance/MyGovernorContract.sol">Governance Token</a> which is the contract that will handle the entire DAO.
	* ___token__: Governance token address.
	* ___timelock__: Time Lock contract address
	* ___votingDelay__: The delay of the proposal until voting starts
	* ___votingPeriod__: Time length of the proposal in which users can vote
	* ___quorumPercentage__: Percentage of governance tokens for proposal to pass

And now the hard part, which can be automatized with a script.
* Delegate governance tokens
* Delegate proposers and executors roles
* Revoke the admin role from the msg.sender (The contract deployer account)

Congratulations! Now you have a __working DAO__.

You can try to add a proposal now by calling the __propose__ method at the governance contract and interacting with it.

The hard part of making the proposal is that it needs calldatas which is hard to handle in Remix or other environments. But it's actually easy to call the method with a script and handle those calldatas in the script, so you can try from there!

I added a modified version of the <a href="https://github.com/PeaKend/BasicDAO/blob/main/contracts/Proposal/Box.sol">Box contract</a> from OpenZeppelin as an example of a proposal so you can try the DAO with it.

## TODO
* Deploy script (Really handy at giving at least a way to try these contracts without low-level handling in Remix)
* Some testing and refactoring

### Licence
MIT 
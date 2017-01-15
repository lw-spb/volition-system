pragma solidity ^0.4.6;

contract TaskList {

    struct Bounty {
        string name;
        uint256 reward;
        bool complete;
    }

    event NewBounty(string name, uint256 reward, uint id);
    event BountyComplete(uint id, address completedBy);

    Bounty[] public bounties;

    mapping (address => uint256) public balanceOf;

    function newBounty(string _name, uint256 _reward) {
        uint id = bounties.push(Bounty({name: _name, reward: _reward, complete: false})) - 1;
        NewBounty(_name, _reward, id);
    }

    function countBounties() constant returns (uint count) {
        return bounties.length;
    }

    function completeBounty(uint bountyId) {
        Bounty b = bounties[bountyId];

        if(b.complete) {
            throw;
        } else {
            b.complete = true;
            balanceOf[msg.sender] += b.reward;
            BountyComplete(bountyId, msg.sender);
        }
    }

}

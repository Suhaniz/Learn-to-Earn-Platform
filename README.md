
Project Name - Learn-to-Earn Aptos Smart Contract

A] **Description**

The **Learn-to-Earn** smart contract incentivizes education by rewarding learners with Aptos tokens upon successful course completion.
It has two core functions:

1. **Register Learner** → Initializes a learner’s account in the contract.
2. **Reward Learner** → Sends tokens from the platform admin to the learner as a reward.

This contract is built on the **Aptos blockchain** using the Move language for secure, transparent, and decentralized rewards management.


B] **Vision**

To create a **decentralized learning ecosystem** where knowledge directly translates into value, encouraging continuous education and skill development.
By leveraging blockchain, we ensure **fair rewards**, **immutable progress records**, and **trustless token transfers** between educators and learners.


C] **Future Scope**

 **Course Completion Verification** → Integration with decentralized oracles to confirm learning milestones before rewards.
 **Multiple Token Support** → Enable rewards in custom tokens instead of just AptosCoin.
 **Leaderboards & Badges** → On-chain records of top learners and gamified achievements.
 **NFT Certificates** → Automatically mint NFTs as proof of course completion.
 **DAO Governance** → Allow the community to vote on reward rules and funding allocations.


D] **Contract Details**

 **Module Name:** `MyModule::LearnToEarn`
 **Deployed Address:** `0xfdac2b0ff708bc688ead77b35078110319186b2ad69d61b3ba6590923318922e` 
 **Token Used:** AptosCoin (`aptos_framework::aptos_coin::AptosCoin`)
 **Main Functions:**

  * `register_learner(account: &signer)`
  * `reward_learner(admin: &signer, learner_addr: address, amount: u64)`
    
<img width="1897" height="886" alt="image" src="https://github.com/user-attachments/assets/7f8d0a5f-fbd9-403d-93dc-5555c4a0437a" />


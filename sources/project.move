module MyModule::LearnToEarn {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct storing learner's earned tokens
    struct Learner has key, store {
        earned_tokens: u64,
    }

    /// Register a new learner
    public fun register_learner(account: &signer) {
        let learner = Learner {
            earned_tokens: 0,
        };
        move_to(account, learner);
    }

    /// Reward a learner after completing a course
    public fun reward_learner(admin: &signer, learner_addr: address, amount: u64) acquires Learner {
        let learner = borrow_global_mut<Learner>(learner_addr);

        // Transfer tokens from admin to learner
        let reward = coin::withdraw<AptosCoin>(admin, amount);
        coin::deposit<AptosCoin>(learner_addr, reward);

        // Update earned tokens
        learner.earned_tokens = learner.earned_tokens + amount;
    }
}

### A Comprehensive Survey on the Application of Deep and Reinforcement
-------------------------
1. Reinforcement learning based approaches in decision making. Page: 7381

### Deep_Reinforcement_Learning_for_Autonomous_Driving_A_Survey
-------------------------
1. In many real-world application, it is not possible for an agent to observe all features
of the environment state; in such cases the decision-making problem is formulated as a partially-observable Markov decision process (POMDP).

**TODO: learn POMDP**

2. Dynamic programming (DP) refers to a collection of algorithms that can be used to compute
optimal policies given a perfect model of the environment in terms of reward and transition functions. Thus, DP is more suitable for complete environment knowledge.
3. Q-learning is one of the most commonly used RL algorithms. It is a model-free TD(Temporal Difference methods) algorithm that learns estimates of the utility of individual state-action pairs (Q-functions defined in Eqn. 2). Q-learning has been shown to converge to the
optimum state-action values for a MDP with probability 1.
4. The difference between *value-based* and *policy-based* methods is essentially a matter of where the burden of optimality resides. Both method types must propose actions and evaluate
the resulting behaviour, but while value-based methods focus on evaluating the optimal cumulative reward and have a policy follows the recommendations, policy-based methods
aim to estimate the optimal policy directly, and the value is a secondary if calculated at all.

**TODO: Come back to this paper after have more knowledge about reinforcement learning**

Website to learn: https://aima.cs.berkeley.edu/adoptions.html
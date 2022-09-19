### Humanlike decicion making and control for autonoumous driving, Peng Hang
-------------------------
1. Decision making methods
    1. Model-based human-like decision making
        - Markov decision process (MDP), *[1]Toward human-like behavior generation in urban environment based on markov decision process with hybrid potential maps*, *[2]Intention-aware online pomdp planning for autonomous driving in a crowd*
        - Other probabilistic model, *[3]Toward automated decision making under uncertainty*, *[4]Decision-making framework for autonomous driving at road intersections: safeguarding against collision, overly conservative behavior, and violation vehicles*
        - Probabilistic Timed Programs (PTPs) and Probalistic Computational Tree Logic (PCTL), *[5]Modelling the level of trust in a cooperative automated vehicle control system*
        - Multiple Criteria Decision Making (MCDM) and Multiple Attribute Decision Making (MADM), *[6]Enabling safe autonomous driving in real-world city traffic using multiple criteria decision making*, *[7]A multiple attribute-based decision making model for autonomous vehicle in urban environment*
    2. Data-driven human-like decision making
        - learning-based decision-making methods, support vector machine (SVM), clustered SVM (CSVM), extreme learning machine (ELM), kernel-based extreme learning machine (KELM), reinforcement learning (RL), deep neural networks (DNN), etc.
    3. Game-theoretic human-like decision making
        - Stackelberg game theory, *[8]A stackelberg game theoretic driver model for merging*
        - combination of game theory and MPC, *[9]A game theory-based model predictive controller for mandatory lane change of multiple vehicles*
        - 3-person stackelberg game theory, *[10]Stackelberg game based model of highway driving*
        - single-step dynamic game with incomplete information, *[11]Automatic lane-changing  decision based on single-step dynamic game with incomplete information and collision-free path planning*

2. Driving style classification
    - aggressive: highest priority to the travel efficiency. Prefer: lane change, overtaking, forcibly merging, sudden accelerations or decelerations.
    - conservative: highest priority to the safety. Prefer: lane keeping, large gap, and low speed driving.
    - normal: most drivers; a balance among different driving objectives.
    - reference paper: *[12]Toward safe and personalized autonomous driving: Decision-making and motion control with dpf and cdt techniques*

3. Driving style recognition approaches
    1. rule-based approaches
        - fuzzy logic, *[13]Online driving style recognition using fuzzy logic*
        - data threshold violation (DTV), *[14]Driving style classification using long-term accelerometer information*
    2. model-based approaches
    3. learning-based approaches


### A Hierarchical Perception Decision-making Framework for Autonomous Driving
------------
- Hypergraph-learning


### [!] An Integrated Threat Assessment Algorithm for Decision-Making of Autonous Driving Vehicles
------------
- Proposes a integrated threat assessment algorithm for the decision-making system, using Markov decision process (MDP) as decision-making system.

### [!] Decision-Making Framework for Autonomous Driving at Road Intersections: Safeguarding Against Collision, Overly Conservative Behavior, and Violation Vehicles
------------
- Intersections
- The proposed framework consists of three main modules: situation awareness, situation assessment, and maneuver decision.
1. Situation awareness:
    - lane level motion path prediction using a precise digital map
    - Identify *potential collision areas* which is the intersection between predicted motion paths of observed vehicles and the global path of the ego vehicle
    - Identify *potential threats*, which are the vehicles that will apear in the *potential collsion areas*, marked as *relevant vehicles*
    - Establish *vehicle-to-vehicle* collision relations

2. Situation assessment:
    - A reasoning structure to assess the traffic situation
    - A threat measure and Bayesian networks to assess *relevant vehicles* regarding the possibility of a collision
    - Use time window filtering to assess relevant vehicles and reduce the impact from noise

3. Maneuver decision:
    - Consider the identified *collsion areas*, intersections types, and traffic signals

### Bi-level Decision-making Modeling for an Autonomous Driver Agent: Application in the Car-following Driving Behavior
-------------
- Car-following
- Propose a decision-making model based on bi-level modeling and use fuzzy logic approach.

### [!] Reachability-based Decision-Making for Autonomous Driving: Theory and Experiments
-------------
- Design of the decision-making system that guarantees safety and liveness. The design is a reactive planning method, and it uses both forward and backward reachability to ensure persistent feasibility. It also reduces the computational cost.
1. Categories of decision-making methods
    1. Rule-based. Make decisions using the current states of other vehicles, without considering their dynamics and the prediction of their trajectories.
    2. Reactive. Make decisions using the predicted trajectories of other vehicles. For example,
        - *[15] Contingency planning over probabilistic obstacle predictions for autonomous road vehicles*
        - Classify trajectories based on topological property and choose the best decision based on some metrics. *[16] Automated tactical maneuver discovery, reasoning and trajectory planning for autonomous driving*, *[17] Spatiotemporal motion planning with combinatorial reasoning for autonomous driving*
    3. Interactive.
        - Game theory. Selects the actions of the ego vehicle and other vehiclesby evaluating all possible combinations of actions.
        - Partially observable Markov decision process (POMDPs). Determines the optimal action of the ego vehicle in response to the unobservable other vehicles' intentions.

### [!] Intention-Aware Autonomous Driving Decision-Making in an Uncontrolled Intersection
--------------
- Intersection
- A continuous hidden Markov model (HMM) to predict (1) high-level motion intention (e.g. turn right, turn left, and go straight) and (2) low-level interaction intentions (e.g. yield status for related vehicles).
- A human-like policy generation mechanism and a Partially observable Markov decision process (POMDPs) are used. The decision is made based on a reward function, considering the driving safety, traffic laws, time efficiency, etc.


### [!] Probabilistic Decision-Making under Uncertainty for Autonomous Driving using Continuous POMDPs
--------------
- A continuous POMDP solver is proposed because driving is a continuous-space problem and hence the belief space is infinite-dimensional.

### [!] Human-Like Decision Making for Autonomous Driving: A Noncooperative Game Theoretic Approach
--------------
- (1) Motion prediction: potential field method, (2) motion planning: model predictive control (MPC), and (3) decision-making: Nash equilibrium and Stackelberg game theory.

### [!] Autonomous Driving at Intersections: A Behavior-Oriented Critical-Turning-Point Approach for Decision Making
--------------
- Left turning at intersection
- The high-level planner uses generalized critical turning point (CTP)-based hierarchical decision-making and planning method. The low-level planner uses POMDP solver to handle uncertainties and make safe actions.


### [!][12] Toward Safe and Personalized Autonomous Driving: Decision-Making and Motion Control with DPF and CDT Techniques
--------------
- The interactions between the dgo vehicle and other vehicles are represented by the dynamic potential field (DPF) and plan the trajectories using constrained Delaunay triangulation (CDT)


### Mutlipolicy decision-making for autonomous driving via changepoint-based behavior prediction: Theory and experiment
--------------

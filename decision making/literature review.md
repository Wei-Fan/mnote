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


### Multi-Policy Decision Making for Reliable Navigation in Dynamic Uncertain Envrionments
------------
1. 
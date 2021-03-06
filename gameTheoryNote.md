source: *A course in Game Theory* https://arielrubinstein.tau.ac.il/books/GT.pdf
# Introduction

## Concepts
1. Games: a description of strategic interaction that includes the constraints on the actins that the players can take and the players' interests.
    - noncooperative game: the sets of possible actions of **individual** players are primitives.
    - cooperative game: the sets of possible joint actions of **groups** of players are primitives.
    - strategic game: each player chooses his plan of action once and for all, and all players' decisions are made simultaneously.
    - extensive game: an extensive game speciies the possible orders of events, and each player can consider his plan of action whenever he has to make a decision.
    - game with perfect information: each player are fully informed with others' information.
2. Solution: a systematic description of the outcomes that may emerge in in a family of games.
3. Rational decision-maker: A: actions from which the decision-maker makes a choice; C: consequences of these actions; $g:A\rightarrow C$: consequence function; $\succsim$: preference relation on set C
    - Rational Assumption: Given any set $B\subseteq A$ in some particular case, a **rational decision-maker** chooses actions using the same preference relation.
    - Decision making under uncertainty: the consequence function is stochastic (i.e. for each $a\in A$ the consequence $g(a)$ is a probability distribution on C), and if the stochastic connection is not given, then the decision-maker wil behave as if he has in mid a probability measure over $\Omega$, a function $g:A\times \Omega \rightarrow C$, and a utility function $u:C\rightarrow \mathbb{R}$; he will choose an action that maximizes $u(g(a,\omega))$
4. Bounded rationality (***A fascinating challenge for future research***): model asymmetries in abilities and in perceptions of a situation by different players.
5. Terminology:
    - profile: $(x_i)_{i\in N}$ where $N$ is the set of players. For profile $x=(x_j)_{j\in N}$, denote $x_{-i}=(x_j)_{j\in N\setminus\{i\}}$, and the profile $x$ can be denoted by $(x_{-i},x_i)$ as well.
    - preferencce relation: the preference relation is first a binary relation $\succsim$ on a set A.
        - complete: if $a\succsim b$ or $b\succsim a$ for every $a\in A$ and $b\in A$
        - reflexive: if $a\succsim a$ for every a\in A$
        - transitive: if $a\succsim c$ whenever $a\succsim b$ and $b\succsim c$
        - $a\succ b$: if $a\succsim b$ but not $b\succsim a$
        - $a\sim b$: if $a\succsim b$ and $b\succsim a$
        - continuous: if $a\succsim b$ whenever there are swequences $(a^k)_k$ and $(b^k)_k$ converge to $a$ and $b$ for which $a^k\succsim b^k$ for all $k$
        - quasi-concave, strictly quasi-concave (the actions are defined on $\mathbb{R}^n$)

## Strategic Games

1. Definition: strategic games: $<N,(A_i),(\succsim_i)>$ or $<N,(A_i),(u_i)>$
    - $N$, the set of players
    - $A_i$, the set of actiosn for player $i$
    - $\succsim_i$, the preference relation for player $i$. The preference relation can be represented by a payoff(utility) fucntion
    $u_i:A\rightarrow \mathbb{R}$ ($\forall a\succsim _i b, u_i(a)\geq u_i(b)$).
    - note: the game is *finite* if the set $A_i$ of every player is finite

2. Nash Equilibrium: a profile $a^*\in A$ of actions with the roperty that
    $$(a^*_{-i},a^*_i)\succsim_i(a^*_{-i},a_i),\forall a_i\in A_i,\forall i\in N $$
    - **Best-response function** $B_i(a_{-i})$ is the set of player $i$'s best actions given $a_{-i}$: $B_i(a_{-i})=\{a_i\in A_i:(a_{-i},a_i)\succsim_i(a_{-i},a'_i),\forall a'_i\in A_i\}$
    - Alternative statement: a Nash equilibrium is a profile $a^*$ of actions for which
    $$a^*_i\in B_i(a^*_{-i}),\forall i\in N $$
    - A method of finding Nash equilibria: (1) calcuclate the best response function of each player. (2) find a profile $a^*$ of actions.
        - e.g. The Prisoner's Dilemma

            |       |Confess|Don't confess|
            |:---:|:---:|:---:|
            |Confess|3,3|0,4|
            |Don't confess|4,0|1,1|

            (1) calculate the best repsonse function:
            $$B_1(x_2=C)=\{C\}, B_1(x_2=D)=\{C\} \Longrightarrow a^*\subseteq \{(C,C),(C,D)\}$$
            $$B_2(x_1=C)=\{C\}, B_2(x_1=D)=\{C\} \Longrightarrow a^*\subseteq \{(C,C),(D,C)\}$$
            (2) find the profile $a^*$: $a^*=(C,C)$


3. Existence of a Nash Equilibrium
    - *Kakutani's fixed point theorem*: Let X be a compact convex subset of $\mathbb{R}^n$ and let $f:X\rightarrow X$ be a set-valued fnction for which
        - $\forall x\in X$ the set $f(x)$ is nonempty and convex
        - the graph of f is closed i.e. $\forall \{x_n\}\text{ and }\{y_n\}\ s.t.\ y_n\in f(x_n),\forall n,\ x_n\rightarrow x, \text{ and } y_n\rightarrow y,\ \text{then we have }y\in f(x)$

        then $\exist x^*\in X\ s.t.\ x^*\in f(x^*)$

    - Proposition: the strategic game $<N,(A_i),(\succsim_i)>$ has a nash equilibrium if for all $i\in N$:
        - the set $A_i$ is a nonempty compact convex subset of a Euclidian space
        - the preference relation $\succsim_i$ is
            - continuous
            - quasi-concave on $A_i$

        - ***Q***: A gamein which some player has finitely many actions violates the condition that the set of actions of every player be convex. Why?

4. Strictly Competitive Games
    - note: only in limited classes of games can we say something about the quiliative character of the equilibria. One of such games is the **strictly competitive game** or **zerosum**: two players are diametrically oppposed.
    - definition: A strategic game $<\{1,2\},(A_i),(\succsim_i)>$ is **strictly competitive** if $\forall a\in A\text{ and } b\in A$ we have $a\succsim_1 b\iff b\succsim_2 a$
    - **maxminmizer for player 1**: The action $x^*\in A_1$ is a maxminimizer for player 1 if
        $$\min_{y\in A_2}u_1(x^*,y)\geq\min_{y\in A_2}u_1(x,y), \forall x\in A_1$$
        or $$x^*=\arg_x\max_{x\in A_1}\min_{y\in A_2}u_1(x,y)$$
    - **Lemma** strictly competitive strategic game $<\{1,2\},(A_i),(u_i)>$. Then we have,
        $$\max_{y\in A_2}\min_{x\in A_1}u_2(x,y)=-\min_{y\in A_2}\max_{x\in A_1}u_1(x,y)$$
        Further $y\in A_2$ solves the problem $\max_{y\in A_2}\min_{x\in A_1}u_2(x,y)$ if and only if it solves $\min_{y\in A_2}\max_{x\in A_1}u_1(x,y)$.
        - *Proof*. known: (1) strictly competitive strategic game: $u_2=-u_1$; (2) math: $\min_z(-f(z))=-\max_z f(z)$
            $$\therefore\max_{y\in A_2}\min_{x\in A_1}u_2(x,y)=\max_{y\in A_2}\min_{x\in A_1}(-u_1(x,y))=\max_{y\in A_2}[-\max_{x\in A_1}u_1(x,y)]=-\min_{y\in A_2}\max_{x\in A_1}u_1(x,y)$$
    - **Proposition** $G=<\{1,2\},(A_i),(u_i)>$ is a strictly competitive strategic game. We have,
        - a. $(x^*,y^*)$ is a Nash equilibrium of G
        - b. $x^*$ is a maxminimizer for player 1 and $y^*$ is maxminimizer for player 2.
        - c. $\max_x\min_y u_1(x,y)=\min_y\max_x u_1(x,y)=u_1(x^*,y^*)$, and thus all Nash equilibria of G yield the same payoffs.
        - $a\Rightarrow b$
        - $a\Rightarrow c$
        - $c+b\Rightarrow a$
        - note: this proposition can be used to find the Nash equilibria of strictly competitive strategic games.

5. Bayesian Games: Strategic Games with Imperfect Information. Some of the parties(player) are not certain of the characteristics of some of the other parties(player)
    - $\Omega$: a set of possible "states of nature".
    - $p_i$: *prior belief* of player $i$. A probalility measure on $\Omega$.
    - $\omega\in\Omega$: the true state of nature of a game.
    - $\tau_i(\omega)$: the signal function. Return a signal observed by player $i$.
    - $\Tau_i$: all possible values of $\tau_i$.
    - $\tau_i^{-1}(t_i)$: when player $i$ receives the signal $t_i\in\Tau_i$, he believes the state is in the set $\tau_i^{-1}(t_i)$.
    - $$\textit{posterior belief}=\begin{cases}\frac{p_i(\omega)}{p_i(\tau_i^{-1}(t_i))},& \omega\in\tau_i^{-1}(t_i)\\
                                    0,& \text{otherwise}\end{cases}$$
    - note: (1) if $\tau_i(\omega)=\omega,\forall \omega\in\Omega$, then the player $i$ has full information about the state of nature.
    - **Definition**: a Bayesian game consists of
        - $N$: the set of players
        - $\Omega$: the set of states
        - $A_i$: the set of actiosn available to player $i$
        - $\Tau_i$: the set of signals observed by player $i$ and a function $\tau_i:\Omega\rightarrow \Tau_i$
        - $p_i$: a probability measure on $\Omega$ (the pror belief of player $i$)
        - $\succsim_i$: a preference relation on the set of probablity measures over $A\times\Omega,A=\times_{j\in N}A_j$
    - **Nash equilibrium of a Bayesian game** $<N, \Omega, (A_i), (\Tau_i), (\tau_i), (p_i), (\succsim_i)>$
        - A player is denoted as $(i,t_i)$
        - (1) The preference ordering $\succsim^*_{(i,t_i)}$ of each player $(i,t_i)$ is defined by
            $$a^*\succsim^*_{(i,t_i)}b^*\iff L_i(a^*,t_i)\succsim_i L_i(b^*,t_i)$$
            where $L_i(A^*,t_i)$ is the lottery over $A\times\Omega$ that assigns probability $\frac{p_i(\omega)}{p_i(\tau_i^{-1}(t_i))}$ to $([a^*(j,\tau_j(\omega))]_{j\in N},\omega)$ if $\omega\in\tau_i^{-1}(t_i)$, zero otherwise.

## Mixed, Correlated, and Evolutionary Equilibrium

1. The mixed extension of the strategic game $<N, (A_i), (u_i)>$ is the strategic game $<N, (\Delta(A_i)), (U_i)>$.
    - $\Delta(A_i)$: the set of probability distributions over $A_i$
    - $U_i:\times_{j\in N}\Delta(A_j)\rightarrow\mathbb{R}$:




--------------------------------------------------------------------------------------------------------
source: *Algorithm Game Theory* https://www.cs.cmu.edu/~sandholm/cs15-892F13/algorithmic-game-theory.pdf
# Introduction

## Assumption:
1. Player:
- able to order the outcomes of the game according to consistent preferences.
- able to analyze the problem and take the right decisions.

## Concepts
1. dominant strategy solution $s$:
$$u_i(s_i, s'_{-i})\geq u_i(s'_i,s'_{-i}),\forall i,\forall s'\in S\& s'\neq s $$
2. Nash equilibrium $s$:
$$u_i(s_i, s_{-i})\geq u_i(s'_i,s_{-i}),\forall i,\forall s'\in S\& s'\neq s $$
3. difference between dominant strategy solution and Nash equilibrium: *no communication needed to reach nash equilibrium*
    - **note**: $s$ is a strategy and there is no probability involved. Hence, the solution of Nash equilibrium is 'conservative'.
4. Mixed strategy Nash equilibrium: (1)the strategy that a player can pick has a probability distribution; (2)player's target is to maximize the *expected payoff*
    - ***Theorem***: any game with a finite set of players and finite set of strategies has a Nash equilibrium of mixed strategies.
5. A distribution is a correlated equilibrium if:
    $$\sum_{s_{-i}}p(s_i,s_{-i})u_i(s_i, s_{-i})\geq \sum_{s_{-i}}p(s_i,s_{-i})u_i(s'_i,s_{-i}),\\\forall i,\forall s_i,s'_i\in S $$
6. Proving a Nash equilibrium exists: linear programming duality.
7. Best response:
    - *improving response for player i*: strategy vector s and gain value/utility for player i $u_i(s)$. Player i change his strategy $s_i$ to $s'_i$ and $u_i(s'_i,s_{-i})>u_i(s)$.
    - *best response for player i*: $s'_i=\arg\max_{s'_i\in S_i} u_i(s'_i,s_{-i})$
8. Cooperative Games: situation when groups of players ooridnate their actions.
9. Strong Nash Equilibrium: extend the Nash equilibrium to cooperative situations.
    - Assumption: the game has nontransferable utility.
    - *transferable utility*: games where a player with increased utility has the ability to compensate other player with decreased utility.
    - *joint deviation*: a strategy vector s and a subset A of players has a *joint deviation* if there are alternate strategies $s'_i\in S_i$ for $i\in A$ forming a vector $s'_A$ s.t. $$\forall i\in A, u_i(s)\leq u_i(s'_A,s_{-A})$$
    - A strategy vector s is strong Nash if no subset A has a joint deviation.
10. Simple Market: e.g. identical goods are sold in different markets and each buyer has access to only a subset of the markets.
    - set A: divisible *goods*; B: *buyers*
    - buyer i: $m_i\in \mathbf{Z}^+$: money; $S_i\in A$: accessible goods(a subset of A); $m(T)=\sum_{i\in T}m_i, T\subseteq B$: the total money possessed by buyers in T.
    - good j: $a_j\in \mathbf{Z}^+$: the amount; $a(S)=\sum_{j\in S}a_j, S\subseteq A$: the total amount of goods in S; $\Tau(S)=\{i\in B|S_i\cap S\neq\empty\}$: the set of buyers who are interested in goods in a set S of goods.
    - a uniform price x is feasible if $$\forall S\subseteq A,x\cdot a(S)\leq m(\Tau(S))$$ i.e. the total cost of S is at most the total money possessed by the interested buyers. a subset $S\subseteq A$ is *tight* if $$x\cdot a(S)= m(\Tau(S))$$
    - ***Lemma 1.15*** A uniform price of x on all goods is feasibel *if and only if* all goods can be sold in such a way that each buyer gets interested goods.

## Finding Nash Equilibria
1. ***Theorem 2.1*** A mixed strategy is a best response if and only if all pure strategies in its support are best responses.
    - *pure strategies*: In a pure strategy a player chooses an action for sure, whereas in a mixed strategy, he chooses a probability distribution over the set of actions available to him.
    - *support of a mixed strategy*: the set of all pure strategies that have nonzero probability in it.
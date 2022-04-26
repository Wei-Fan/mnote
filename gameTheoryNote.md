source: *A course in Game Theory* https://arielrubinstein.tau.ac.il/books/GT.pdf
# Introduction

## Concepts
1. Games: a description of strategic interaction that includes the constraints on the actins that the players can take and the players' interests.
    - noncooperative game: the sets of possible actions of **individual** players are primitives.
    - cooperative game: the sets of possible joint actions of **groups** of players are primitives.
    - strategic game: each player chooses his plan of action once and for all, and all players' decisions are made simultaneously.
    - extensive game: an extensive game speciies the possible orders of events, and each player can consider his plan of action whenever he has to make a decision.
    - game with perfect information: each player are fully informed aboyt eaach others' moves.
2. Solution: a systematic description of the outcomes that may emerge in in a family of games.






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
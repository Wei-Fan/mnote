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
8. Strong Nash Equilibrium:
- *joint deviation*: a strategy vector s and a subset A of players has a *joint deviation* if there are alternate strategies $s'_i\in S_i$ for $i\in A$ forming a vector $s'_A$ s.t. $$\forall i\in A, u_i(s)\leq u_i(s'_A,s_{-A})$$
- A strategy vector s is strong Nash if no subset A has a joint deviation.
9. 
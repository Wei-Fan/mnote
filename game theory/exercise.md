### 18.2
first price auction game:
- known: valuation of the object: $v_1>v_2>\cdots>v_n>0$
- action: bid value: $b_i\in [0,\infty)$
- payoff:
    - game over price: $p=\max \{b_i\}$
    - payoff: $f(b_i)=v_i-p\tt{\ (if\ win),\ or\ } 0 \tt{\ (if\ lose)}$

*proof*
- the best reponse for any players is $b_i\in(0,v_i]$
- if player 1 bids $b_1\in(v_2,v_1)$, then $b_1>b_2,\ b_1>b_3,\cdots,b_1>b_n\Rightarrow b_1=\max{b_i}$. To maximize the payoff, player 1 can bid $b_1=v_2$.
- N.E. are $\{v_2, b_2, b_3,\cdots,b_n\}$, where $b_i\in(0,v_i]$, $i=2,\cdots,n$.

### 18.3
second price auction game:
- known: valuation of the object: $v_1>v_2>\cdots>v_n>0$
- action: bid value: $b_i\in [0,\infty)$
- payoff:
    - game over price: $p=\max_{i\neq k} \{b_i\},\ k=\arg\max\{b_i\}$
    - payoff: $f(b_i)=v_i-p\tt{\ (if\ win),\ or\ } 0 \tt{\ (if\ lose)}$
*proof*
- assume $p\geq v_j$:
    - if player j wins ($b_j\geq p \geq v_j$), player j needs to bid $b_j=v_j$ and payoff is zero.
    - if player j loses, payoff is zero.
- assume $p\leq v_j$:
    - if player j wins ($b_j\geq p$), the payoff is $v_j-p\geq 0$.
    - if player j loses, payoff is zero.
- To avoid negative payoff, $b_i\in[0,v_j]$. Because there is a chance player j could win and the payoff is greater or equal zero, the player j will bid as large as possible to win. Therefore, $b_j=v_j$.
- There is a N.E.: player i bids larger than $v_1$. all other players bid less than $v_i$. The payoff of player i is positive, so player i doesn't want to change. If other players want to win, the payoff wil be negative, so they will not change either.
- note: *why can't player i bid $v_2$ as the first price aution?*
    - because player i will lose to some other player who bids $b_i\in(v_2,v_1)$, even though that player will have negative payoff. When we consider the best response, we need to consider all situations and not only N.E.
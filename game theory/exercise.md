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

### 18.5
War of Attrition
- action/strategy: concession time $t_i>0$.
- payoff:
    - assume player 1 concedes at $t_1$ and player 2 concedes at $t_2$
    - in the view of player 1, $t_2\in[0,\infty)$. There is a boundary condition: $t_2=0$. Consider the payoff in two conditions:
    $$f(t_1)=\begin{cases}\begin{cases}\frac{v_1}{2},t_1=0\\v_1,t_1>0\end{cases},t_2=0\\\begin{cases}0,t_1=0\\ v_1-t_2,t_1>t_2\\ \frac{v_1}{2}-t_2,t_1=t_2 \\-t_1,t_1<t_2\end{cases},t_2>0\end{cases}$$
- Let's consider N.E. Assume $t^*=(t_1^*,t_2^*)$. If they are all nonzero. The loser's payoff would be negative, so the best response is to concede when game starts. Therefore, at least one player concedes when $t=0$.
- Now, let's show that N.E. exist. Assume $v_1>v_2$. Consider three cases:
    - $t<v_2$. (0,t) and (t,0) are not N.E. because the loser can win by conceding at $v_2$ and raise his payoff from 0 to $v_2-t$
    - $v_2<t<v_1$. only (t,0) is N.E.
    - $v_1<t$. (t,0) and (0,t) are N.E.

- note: the N.E. means no regrets: the game is settled at a situation and no player is regret for the possibility of better result. Do NOT CONSIDER HOW THE SITUATION IS ACHIEVED.

### 19.1
A location game
- This is an area division problem. Consider an area $A=\int_0^1f(x)dx$.
- Assume all candidate: $0\leq x_1\leq\cdots\leq x_n\leq 1$.
- For n=2, there exists $x_{\frac{1}{2}}$ which divide the area into two equally. Then, the N.E. is $x^*=(x_{\frac{1}{2}},x_{\frac{1}{2}})$.
- For n>2, $x^*=(x_{\frac{1}{2}},x_{\frac{1}{2}},x_{\frac{1}{2}})$ would not be N.E. because $x=(x_{\frac{1}{2}},x_{\frac{1}{2}},x_{\frac{1}{2}}+\epsilon)$ will give candidate 3 votes of $\frac{1}{2}A$ which is larger than $\frac{1}{4}A$ that condidate 1 and 2 get.

### 20.2
Kakutani’s fixed point theorem
- proof:
    - if $\forall x\in X, x\not\in X$, then consider this: we can always find $x_1,x_2\in X$, and $y_1=f(x_1)< x_1, y_2=f(x_2)> x_2$.
    - Then, let's find a $\alpha,\beta\in \mathbb{R}$, such that
    $$\begin{cases}\alpha x_1+\beta x_2=a\\ \alpha y_1+\beta y_2=a\end{cases}\Rightarrow\alpha=\frac{y_2-x_2}{x_1-y_1}\beta$$
    - Let $\alpha = (y_2-x_2)\delta, \beta=(x_1-y_1)\delta$ and $\delta = \frac{1}{y_2-x_2+x_1-y_1}$. Therefore, $\alpha,\beta\in(0,1)$.
    - Since f is a convex function. Hence, $$x_0=\alpha x_1+\beta x_2\in X\\
    \Rightarrow f(x_0) = \alpha f(x_1)+\beta f(x_2)=x_0$$.
    - Therefore, assumption not stands.

- note: Define $B:A\rightarrow A$ by $B(a)=\times_{i\in N}B_i(a_{-i})$ where $B_i$ is the best response function of player $i$. if B is nonempty, convex and closed, then there will be a fix point for B, which means the profile $a=B(a)$ is the N.E. To ensure that, the preference relation:
$$\succsim_i \texttt{ is (1)continuous, (2)quasi-concave on }A_i$$


### 24.1
Strictly competitive game
- a. If there is a N.E, the payoff is $\max_1\min_2 u_1'(a_1,a_2)\geq\max_1\min_2 u_1(a_1,a_2)$
- b. $\max_{a_1\in A_1'}\leq\max_{a_1\in A}$
- c. (a) In some strategic games, increasing 1’s payoff in certain situations might decrease his payoff in equilibrium. (b) In some strategic games, restricting 1’s play, might increase his payoff.

### 27.2
Bach or Stravinsky
- The set N of players is {1,2}
- The set $\Omega$ of states is {[B,B], [B,S], [S,B],[S,S]}
- The set $A_i$ of actions of each player $i$ is $\{B,S\}$
- The set $T_i$ of signals that i can receive is $[X,Y],X,Y\in\{B,S\}$
- The signal function: $\tau_1(XY)=X,\tau_2(XY)=Y$.
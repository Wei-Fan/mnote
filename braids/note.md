# An Introduction to Braid Theory
## Introduction
1. n-braid : (1) each strand starts on th top and ends on the bottom, (2) no two strands intersect, (3) traverse any strand from top, always moving downwards
2. n-braid $\beta$ is equivalent to n-braid $\beta'$: only 'shake the box'
3. multiply operation: joining the bottom of $\beta$ to the top of $\beta'$.
## Definitions
1. Braids:
![unit cube](n-braids.png)
$$A_i=(\frac{1}{2},\frac{i}{n+1},1)$$
$$B_i=(\frac{1}{2},\frac{i}{n+1},0)$$
2. ith braid string: $d_i$ starts from $A_i$ and some $B_k$.
3. $\mathcal{B}_n$: the set of all n-braids.
4. Elementary moves:
    - $\Omega$: replace edge AB in a braid string d by two edges $AC\cup BC$.
    - $\Omega^{-1}$; replace edges $AC\cup BC$ in d by AB.
5. $\beta$ is equivalent to $\beta'$, $\beta\sim\beta'$ $\Longleftrightarrow$ there exists a finite sequence of elementary moves that transform $\beta$ to $\beta'$.
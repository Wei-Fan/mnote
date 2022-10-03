### Divide and Conquer Algorithms
1. **Divide** the problem into subproblems
2. **Conquer** the subproblems by solving them recursively
3. **Combine** all base cases solution into the solution for the original problem

### Multiplying Large Number
$$a:[1,0,1,...,1]:n$$
$$b:[1,0,1,...,1]:m$$
$$c=a\times b:[...]:m+n$$
1. Grade School Algorithm
```
    for j:=m down to 1, tmp:=a
        if b[j]==1:
            addTo(res, tmp)
        shift_left(tmp)
```
Complexity: $\Theta(m(m+n))$

2. Divide & Conquer (m=n)
$$[a]=2^{\frac{n}{2}}[a_1]+[a_2]$$
$$[b]=2^{\frac{n}{2}}[b_1]+[b_2]$$
$$[a]\times[b]=2^n[a_1][b_1]+2^{\frac{n}{2}}([a_1][b_2]+[a_2][b_2])+[a_2][b_2]$$
```
    multiply(a,b):
        size = |a| = |b|
        if (size==1):
            <one bit multiply>
        split a into a1,a2
        split b into b1,b2
        r1=multiply(a1,b1)
        r2=multiply(a1,b2)
        r3=multiply(a2,b1)
        r4=multiply(a2,b2)
        add(r1,r2,r3,r4,size)
```
Complexity:
$$T(n)  =\begin{cases}\Theta(1), n=1\\ 4T(\frac{n}{2})+\Theta(n)\end{cases}\\
        = \Theta(n^2)$$
THe complexity is the same as the Grade School Algorithm.

3. Karatsuba's Multiplication Algorithm
Karatsuba's Trick
$$
    r_1=[a_1][b_1],\ r_4=[a_2][b_2]\\
    r=([a_1]+[a_2])([b_1]+[b_2])\\
    \Rightarrow r_3=r-(r_1+r_4)
$$
Complexity:
$$T(n)  =\begin{cases}\Theta(1), n=1\\ 3T(\frac{n}{2})+\Theta(n)\end{cases}\\
        = \Theta(n^{log_23})$$

### Master Method (used to solve recurrences)
$$T(n)=aT(\frac{n}{b})+\Theta(n^c)$$
- Case1: $$\log_ba>c\Rightarrow T(n)=\Theta(n^{\log_ba})$$
- Case2: $$\log_ba=c\Rightarrow T(n)=\Theta(n^{\log_ba}\log n)$$
- Case3: $$\log_ba<c\Rightarrow T(n)=\Theta(n^c)$$

Merge sort: $a=b=2,\ c=1\Rightarrow$ case2:
$$T(n)=\Theta(n\log n)$$
Karatsuba: $a=3,\ b=2,\ c=1\Rightarrow$ case1:
$$T(n)=\Theta(n^{\log_23})$$

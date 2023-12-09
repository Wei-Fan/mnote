1. Behavioral systems: $$\Sigma = (T,W,\mathcal{B})$$
- note: different between T and W: in a differential model, T consists of independent variables. For example, $\frac{\partial}{\partial t}T=\frac{\partial^2}{\partial x^2}T+q$, $T=\{x,t\}=\mathbb{R}^2,W=\{q,T\}=\mathbb{R}^2$.
2. Trajectory: $$\omega:T\rightarrow W\begin{cases}\omega\in\mathcal{B}, \texttt{the model allows } \omega\\ \omega\notin\mathcal{B}, \texttt{the model forbids } \omega\end{cases}$$
3. Convert I/O system to behavioral system: $$T=\mathbb{R}\\ W=U\times Y \texttt{(input x output signal spaces)} \\ \mathcal{B} = \texttt{all input/output pairs}$$
4. System with latent variables: $\Sigma_L=(T,W,L,\mathcal{B}_{full})$
- Manifest variables: the variables the model aims at.
- Latent variables: auxiliary variables.
- $W$ the signal space, containing manifest variables.
- $L$ the latent variable space.
- $\mathcal{B}_{full}\subseteq(W\times L)^T, (\omega,l):T\rightarrow W\times L$.
5. Elimiate latent variables. The latent variable system $\Sigma_L$ induces the manifest system $\Sigma=(T,W,\mathcal{B})$ with manifest behavior:
$$\mathcal{B}=\{\omega:T\rightarrow W|\exists l:T\rightarrow L s.t. (\omega,l)\in\mathcal{B}_{full}\}$$
6. Linear time-invariant differential system (LTI)
- linear: $\omega_1,\omega_2\in\mathcal{B}\Rightarrow \alpha\omega_1+\beta\omega_2\in\mathcal{B}$
- time-invariant: $\omega\in\mathcal{B}\Rightarrow \sigma^t\omega\in\mathcal{B}$
- Differential equation: $R_0\omega+R_1\frac{d}{dt}\omega+\cdots+R_n\frac{d^n}{dt^n}\omega=0(*)$, $R_i$ is $\cdot\times m$ matrix, and $\cdot$ can be any finite number.
- Polynomial matrix: $R(\xi)=R_0+R_1\xi+\cdots+R_n\xi^n$. Therefore, $(*)\Leftrightarrow R(\frac{d}{dt})\omega=0\Rightarrow \mathcal{B}=ker(R(\frac{d}{dt}))$ and $R(\frac{d}{dt})\omega=0$ is a kernel representation of the LTI differential system.
7. LTI diferential system with latent variables:
- Full behavior $$\mathcal{B}_{full}=\{(\omega,l):\mathbb{R}\rightarrow\mathbb{R}^{w+l}|R(\frac{d}{dt})\omega=M(\frac{d}{dt})l\}$$
- Manifest behavior $$\mathcal{B}=\{\omega:\mathbb{R}\rightarrow\mathbb{R}^{w}|\exists l:\mathbb{R}\rightarrow\mathbb{R}^l, s.t. R(\frac{d}{dt})\omega=M(\frac{d}{dt})l\}$$
8. n-Dimensional systems. $\Sigma=(\mathbb{R}^n, \mathbb{R}^w,\mathcal{B})$.
$$R\in\mathbb{R}^{\cdot\times w}[\xi_1,\cdots,\xi_n], R(\frac{\partial}{\partial x_1}, \cdots, \frac{\partial}{\partial x_n})\omega=0$$
- $\cdot$ means the number of equations.
- n-D systems group is denoted as $\mathcal{L}^w_n$. n is the number of independent variables and w is the number of dependent variables.
- A system is LTI $\Leftrightarrow \Sigma\in\mathcal{L}$ or $\mathcal{B}\in\mathcal{L}$.
9. Annihilators for n-D systems. $$n_\mathcal{B}:=\{n\in\mathbb{R}^w[\xi_1,\cdots,\xi_n]|n^\texttt{T}(\frac{\partial}{\partial x_1}, \cdots, \frac{\partial}{\partial x_n})\mathcal{B}=0\}$$
- The annihilators is the sub-module of $\mathbb{R}^w[\xi_1,\cdots,\xi_n]$, denoted as $n_\mathcal{B}=<R>$.
- Two system is the same if and only if $<R_1>=<R_2>$.
10. Properties of $\mathcal{L}$, for any $\mathcal{B}_1, \mathcal{B}_2\in \mathcal{L}$
- Intersection $\mathcal{B}_1\cap\mathcal{B}_2\in\mathcal{L}$
- Addition $\mathcal{B}_1 + \mathcal{B}_2\in\mathcal{L}$
- Projection $\mathcal{B}\in\mathcal{L}^{w_1+w_2}\Rightarrow \prod_{w_1}\mathcal{B}\in\mathcal{L}^{w_1}$

11. Controllability
- Definition. Consider a dynamical system $\Sigma=(T,W,\mathcal{B})$ with $T=\mathbb{R}$ or $\mathbb{Z}$. Assume it is time-invariant, $\sigma^t\mathcal{B}=\mathcal{B},\forall T\in \mathbb{T}$. $\Sigma$ is controllable if $$\forall \omega_1, \omega_2\in\mathcal{B}, \exists t\in T,\ \omega\in\mathcal{B},\ s.t.\ \omega(t)=\begin{cases}\omega_1(t), && t<0\\ \omega_2(t-T), && t\geq T\end{cases}$$
- The following are equivalent, for LTI differential system $\Sigma=(\mathbb{R}, \mathbb{R}^w,\mathcal{B})$:
    - $\mathcal{B} \in \mathcal{L}^w$ is controllable.
    - The kernel representation $R(\frac{d}{dt})w=0$ of $\mathcal{B}$ satisfies $rank(R(\lambda))=rank(R),\forall \lambda\in\mathbb{C}$. In other words,  $rank(R(\lambda))$ is independent of $\forall\lambda\in\mathbb{C}$.
    - The behavior $\mathcal{B}$ is the image of a linear constant-cefficient differential operator, which means $\exists M\in\mathbb{R}^{w\times\cdot}[\xi],\ s.t.\ \mathcal{B}=\{\omega|\exists l,\ s.t.\ \omega=M(\frac{d}{dt})l\}$.
    - TODO(3): Prove these three statements!!! -> check a note on persistency of excitation.
12. (Math) Matrix Algebra. $$A_{n\times m}=\left[
\begin{array}{ccc}
a_{11} & \cdots & a_{1m} \\
\cdots & \cdots & \cdots\\
a_{n1} & \cdots & a_{nm}
\end{array}
\right] = \left[
\begin{array}{ccc}
a_{1} & \cdots & a_{m}
\end{array}
\right]$$
- $Col A$: the column space of A, containing all linear combination of the span of column vector, $Span \{a_1,\cdots,a_m\}$. $Col A$ is a subspace of $\mathbb{R}^n$. In other words, $Col A=\{b | Ax=b,\forall x\in \mathbb{R}^m\}$.
- $Nul A$: the null space of A, containing the solution of $Ax=0$. $Nul A$ is a subspace of $\mathbb{R}^m$. In other words, $Nul A=\{x|Ax=0\}$.
- $rank(A)$: the rank of A is the dimension of the $ColA$, and is the cardinality of the basis for the $ColA$. The rank is no larger than the maximal number of coloumn number: $rank(A)\leq m$; the rank is no larger than the dimension of the full space: $rank(A)\leq n$.
- $rank(A)+\dim Nul A=m$. The dimension sum of $Col A$ and $Nul A$ is equal to the column number of A. Note: $\dim Nul A=$ nonpivot columns.

13. (Math) Rank of Polynomial Matrix. TODO!

14. Theorem 5 (from *from time series to linear system—part I. Finite dimensional linear time invariant systems*): $$\mathcal{B}\in\mathcal{L}^w\Leftrightarrow\exists \texttt{polynomial matrix } R\ s.t.\ \mathcal{B}=ker(R(\sigma)), R \texttt{ has full row rank}$$
15. $\mathcal{B}_{[1,T]}:=\{\omega:[1,T]\rightarrow\mathbb{R}^w|\exists v\in \mathcal{B}:\omega(t)=v(t),1\leq t\leq T\}$.
16. The module of annihilators of $\mathcal{B}$: $n_\mathcal{B}:=\{n\in\mathbb{R}^w[\xi]|n^T(\sigma)\mathcal{B}=0\}$.
- the submodule is generated by the rows of R, where $R\in\mathbb{R}^{\cdot\times w}[\xi]$.
- $n_\mathcal{B}^\Delta:=\{n\in\mathbb{R}^w[\xi]|\texttt{each element of n is of degree }\leq\Delta\}$. The element of annihilators is polynomial and the highest degree is less than $\Delta$.
17. Foundamental Lemma. For $L\in \mathbb{Z}_+$, $n_\mathcal{B}^{L-1}=ker(\mathcal{B}_{[1,L]})$.
- why? TODO!
------------
### Introduction to Dynamical Models
1. A system $\Sigma=(\mathbb{T}, \mathbb{W},\mathcal{B})$ is complete if $\forall\omega:\mathbb{T}\rightarrow\mathbb{W}, \texttt{ if }\forall t_0,t_1\in\mathbb{T}, \omega_{[t_0,t_1]}\in\mathcal{B}_{[t_0,t_1]}\texttt{, then } \omega\in\mathcal{B}$.
- $\mathcal{B}\subseteq\mathbb{W}^\mathbb{T}$.
- *l-complete*: the window has finite width $t_1-t_0=l$.
2. $\mathcal{L}^w$: the class of all discrete-time complete LTI systems with w variables.
- $\forall \Sigma=(\mathbb{T},\mathbb{W},\mathcal{B})\subset\mathcal{L}^w\Rightarrow \mathbb{T}\subseteq\mathbb{Z}_+,\mathbb{W}\subseteq\mathbb{R}^w,\mathcal{B}\subseteq\mathbb{R}^{w\times\mathbb{Z}_+}$.
- *l-complete* $\Leftrightarrow\ \exists$ a difference equation representation of that system with $l$ time shifts. 
3. Kernel Representation. 
- $R_0\omega(t)+R_1\omega(t+1)+\cdots+R_l\omega(t+l)=0\ \ (*)$, where $R_i\in\mathbb{R}^{g\times w}$.
- represenation: $\mathcal{B}=\{\omega\in(\mathbb{R}^w)^\mathbb{Z}|(*)\texttt{ holds}\}$. Proof: $l$-complete and discrete-time means (*) holds for some t. LTI shows that (*) holds for all t in $\mathbb{Z}$.
- Polynomial matrix representation: $\mathcal{B}=ker(R(\sigma))$. $R(z):=R_0+R_1z^1+\cdots+R_lz^l\in\mathbb{R}^{g\times w}[z]$. Then, $(*)\Leftrightarrow R(\sigma)w=0$. note: $\sigma^k\omega(t)=\omega(t+k)$, where $\sigma$ is the backward shift operator.
- The polynomial matrix is not unique because (1) R might not be full row rank, (2) the equivalence of $R(\sigma)w=0$ and $U(\sigma)R(\sigma)w=0$.
- *Minimal kernel representation*: for a given $\mathcal{B}\in\mathcal{L}^w$, there always exists a R has full row rank. The words *minimal* means that the number of equations (equal to row dimension of R) is minimal among all kernel representation.
- *shortest lag representation*. Among all *minimal kernel representation*, there exists one with minimal maximum lag (the largest lag in all equations) and total lag (the sum of lag in all equations). In a shortest lag representation, R is row proper.
- Row proper: The highest degree in the determinant of R is equal to the highest degree in a new matrix, where the element with highest degree in each row is on the main diagonal.
4. Theorem. The following are equivalent for $\Sigma=(\mathbb{Z},\mathbb{R}^w,\mathcal{B})$:
- $\Sigma$ is linear, time invariant, and complete.
- $\mathcal{B}$ is linear, shift-invariant, and closed in the toplogy of pointwise convergence.
- There is a polynomial matrix, such that $\mathcal{B}=ker(R(\sigma))$.
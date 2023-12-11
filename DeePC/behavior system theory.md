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
- Definition. Consider a dynamical system $\Sigma=(T,W,\mathcal{B})$ with $T=\mathbb{R}$ or $\mathbb{Z}$. Assume it is time-invariant, $\sigma^t\mathcal{B}=\mathcal{B},\forall T\in \mathbb{T}$. $\Sigma$ is controllable if $$\forall \omega_1, \omega_2\in\mathcal{B}, \exists T\in \mathbb{T},\ \omega\in\mathcal{B},\ s.t.\ \omega(t)=\begin{cases}\omega_1(t), && t<0\\ \omega_2(t-T), && t\geq T\end{cases}$$
- Note: controllable means that no matter what is the current state (past behavior), there is always a behavior towards the target state (desired future behavior). Because of time-invariant, the controllability means concatenability of trajectories after a delay.
- The following are equivalent, for LTI differential system $\Sigma=(\mathbb{R}, \mathbb{R}^w,\mathcal{B})$:
    - $\mathcal{B} \in \mathcal{L}^w$ is controllable.
    - The kernel representation $R(\frac{d}{dt})w=0$ of $\mathcal{B}$ satisfies $rank(R(\lambda))=rank(R),\forall \lambda\in\mathbb{C}$. In other words,  $rank(R(\lambda))$ is independent of $\forall\lambda\in\mathbb{C}$.
        - proof. $rank(R)=m(\mathcal{B})$ the input cardinality. It means that no matter what is the current behavior, the number of input is sufficient to control.
    - The behavior $\mathcal{B}$ is the image of a linear constant-cefficient differential operator, which means $\exists M\in\mathbb{R}^{w\times\cdot}[\xi],\ s.t.\ \mathcal{B}=\{\omega|\exists l,\ s.t.\ \omega=M(\frac{d}{dt})l\}$.
        - proof. (TODO)
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

13. (Math) Rank of Polynomial Matrix. The largest number of rows or columns where no row or column can be expressed as a polynomial combination of the others.

14. Theorem 5 (from *from time series to linear system—part I. Finite dimensional linear time invariant systems*): $$\mathcal{B}\in\mathcal{L}^w\Leftrightarrow\exists \texttt{polynomial matrix } R\ s.t.\ \mathcal{B}=ker(R(\sigma)), R \texttt{ has full row rank}$$
15. $\mathcal{B}_{[1,T]}:=\{\omega:[1,T]\rightarrow\mathbb{R}^w|\exists v\in \mathcal{B}:\omega(t)=v(t),1\leq t\leq T\}$.
16. The module of annihilators of $\mathcal{B}$: $N_\mathcal{B}:=\{n\in\mathbb{R}^w[\xi]|n^T(\sigma)\mathcal{B}=0\}$.
- the submodule is generated by the rows of R, where $R\in\mathbb{R}^{\cdot\times w}[\xi]$.
- $N_\mathcal{B}^\Delta:=\{n\in\mathbb{R}^w[\xi]|\texttt{each element of n is of degree }\leq\Delta\}$. The element of annihilators is polynomial and the highest degree is less than $\Delta$.
17. Foundamental Lemma. For $L\in \mathbb{Z}_+$, $N_\mathcal{B}^{L-1}=ker(\mathcal{B}_{[1,L]})$.
- why? TODO!
------------
### Introduction to Dynamical Models
1. A system $\Sigma=(\mathbb{T}, \mathbb{W},\mathcal{B})$ is complete if $\forall\omega:\mathbb{T}\rightarrow\mathbb{W}, \texttt{ if }\forall t_0,t_1\in\mathbb{T}, \omega_{[t_0,t_1]}\in\mathcal{B}_{[t_0,t_1]}\texttt{, then } \omega\in\mathcal{B}$.
- $\mathcal{B}\subseteq\mathbb{W}^\mathbb{T}$.
- *l-complete*: the window has finite width $t_1-t_0=l$.
2. $\mathcal{L}^w$: the class of all discrete-time complete LTI systems with w variables.
- $\forall \Sigma=(\mathbb{T},\mathbb{W},\mathcal{B})\subset\mathcal{L}^w\Rightarrow \mathbb{T}\subseteq\mathbb{Z}_+,\mathbb{W}\subseteq\mathbb{R}^w,\mathcal{B}\subseteq\mathbb{R}^{w\times\mathbb{Z}_+}$.
- *l-complete* $\Leftrightarrow\ \exists$ a difference equation representation of that system with $l$ time shifts.
3. Discretization of Continuous Time State Space Systems.
- $$\begin{cases}\dot{x}(t)=Ax(t)+Bu(t)\\ y(t)=Cx(t)+Du(t)\end{cases}$$
- $$\implies\begin{cases}x((k+1)\tau)=G(\tau)x(k\tau)+H(\tau)u(k\tau)\\ y(k\tau)=Cx(k\tau)+Du(k\tau)\end{cases}$$
- $$G(\tau)=e^{A\tau}\\ H(\tau)=(\int_0^\tau e^{A\lambda}d\lambda)B$$
4. Kernel Representation.
- $R_0\omega(t)+R_1\omega(t+1)+\cdots+R_l\omega(t+l)=0\ \ (*)$, where $R_i\in\mathbb{R}^{g\times w}$.
- represenation: $\mathcal{B}=\{\omega\in(\mathbb{R}^w)^\mathbb{Z}|(*)\texttt{ holds}\}$. Proof: $l$-complete and discrete-time means (*) holds for some t. LTI shows that (*) holds for all t in $\mathbb{Z}$.
- Polynomial matrix representation: $\mathcal{B}=ker(R(\sigma))$. $R(z):=R_0+R_1z^1+\cdots+R_lz^l\in\mathbb{R}^{g\times w}[z]$. Then, $(*)\Leftrightarrow R(\sigma)w=0$. note: $\sigma^k\omega(t)=\omega(t+k)$, where $\sigma$ is the backward shift operator.
- The polynomial matrix is not unique because (1) R might not be full row rank, (2) the equivalence of $R(\sigma)w=0$ and $U(\sigma)R(\sigma)w=0$.
- *Minimal kernel representation*: for a given $\mathcal{B}\in\mathcal{L}^w$, there always exists a R has full row rank. The words *minimal* means that the number of equations (equal to row dimension of R) is minimal among all kernel representation.
- *shortest lag representation*. Among all *minimal kernel representation*, there exists one with minimal maximum lag (the largest lag in all equations) and total lag (the sum of lag in all equations). In a shortest lag representation, R is row proper.
- Row proper: The highest degree in the determinant of R is equal to the highest degree in a new matrix, where the element with highest degree in each row is on the main diagonal.
5. Theorem. The following are equivalent for $\Sigma=(\mathbb{Z},\mathbb{R}^w,\mathcal{B})$:
- $\Sigma$ is linear, time invariant, and complete.
- $\mathcal{B}$ is linear, shift-invariant, and closed in the toplogy of pointwise convergence.
- There is a polynomial matrix, such that $\mathcal{B}=ker(R(\sigma))$.
6. Behavior invariants.
- $p(\mathcal{B})$: the number of equations, which is equal to the number of outputs. It is the output cardinality in an I/O representation.
- $m(\mathcal{B})$: input cardinality of $\mathcal{B}$. $m:=w-p$.
- $n(\mathcal{B})$: the minimal state dimension of $\mathcal{B}$, which is the total lag.
- $l(\mathcal{B})$: the lag of $\mathcal{B}$.
7. Obtain the I/O system from behavior model.
- Projection matrix $\Pi\in\mathbb{R}^{w\times w}$. Partition of a trajectory into $u$ and $y$: $\left[\begin{array}{c}u\\ y\end{array}\right]:=\Pi^T\omega$. $u\in(\mathbb{R}^m)^\mathbb{Z}$ and $y\in(\mathbb{R}^p)^\mathbb{Z}$.
- The variables corresponding to the columns of full-rank submatrix of R $\leftrightarrow$ the dependent variables $\leftrightarrow$ output $y$.
- The variables corresponding to the other columns of R $\leftrightarrow$ the free variables $\leftrightarrow$ input $u$.
- $m=\dim Nul R$ and $p=rank(R)=\dim Col R$.
- For $ker(R(\sigma))$ being a minimal kernel represetation of $\mathcal{B}\in\mathcal{L}^w$, there exists a projection matrix $\Pi$, such that $P\in\mathbb{R}^{p\times p}[z]$ is full rank and $G(z):=P^{-1}(z)Q(z)$ is proper, where $[Q\ \ -P]:=R\Pi$.
- Note: $0=R(\sigma)\omega=R(\sigma)\Pi\Pi^T\omega=[Q\ \ -P]\left[\begin{array}{c}u\\ y\end{array}\right]=Q(\sigma)u-P(\sigma)y\implies P(\sigma)y=Q(\sigma)u\implies G(z)$ is the transfer function.
8. Latent Variables, State Variables, and State Space Representations.
- Manifest behavior of the latent variable system: $\mathcal{B}(R,M):=\{\omega\in(\mathbb{R}^w)^\mathbb{Z}|\exists l\in(\mathbb{R}^l)^\mathbb{N},R(\sigma)\omega=M(\sigma)l\}$
- Full behavior $\mathcal{B}_{full}(R,M):=\{(\omega,l)|\dots\}$.
- The system is observable if there is a map from $\omega$ to $l$.
- Any LTI system admits a representation by input/state/output equation: $\mathcal{B}_{i/s/o}:=\{\omega:=\Pi col(u,y)\in(\mathbb{R}^w)^\mathbb{Z}|\exists x\in(\mathbb{R}^n)^\mathbb{Z}, \sigma x=Ax+Bu,y=Cx+Du\}$.
- Note: the above definition give us the method to build a behavior model from a state space equation.
- $(u,y)$ is the manifest variable and $x$ is the latent variable. The number of the latent variable is equal to the dimension of the minimal state dimension (the total lag of row equation).
9. A system $\mathcal{B}$ is autonomous $\Leftrightarrow m(\mathcal{B})=0$, which means the input caidinality equals zero and the trajectory is determined by its past.
10. A system $\mathcal{B}$ is controllable $\Leftrightarrow$ $\forall \omega_1,\omega_2\in\mathcal{B},\exists \omega\in\mathcal{B},\omega=\begin{cases}\omega_1, t<0\\ \omega_2, t\geq0\end{cases}$.
- $\mathcal{B}$ is controllable $\Leftrightarrow$ $R(z)$ has a constant rank for all $z\in\mathbb{C}$. (TODO: why?)
- $\mathcal{B}$ is controllable $\Leftrightarrow$ (1) $R$ is a minimal kernel representation, and (2) $R$ is left prime (meaning that $R$ cannot be factored into a product of two matrices where the left one has more column than row).
- $\mathcal{B}$ is controllable $\Leftrightarrow$ $P$ and $Q$ are left coprime in the I/O representation. (left coprime means that $\exists X,Y$ polynomial matrices, $XP+YQ=I$) (TODO: why?)
11. A noncontrollable system can be represeted as $\mathcal{B}=\mathcal{B}_{ctrb}\oplus\mathcal{B}_{aut}$, where $\mathcal{B}_{ctrb}$ is the largest controllable subsystem and $\mathcal{B}_{aut}$ is a autonomous subsystem.
- $\mathcal{B}_{ctrb}$ can be obtain from $R=FR'$, where $F\in\mathbb{R}^{g\times g}[z]$ and $R'$ is prime: $\mathcal{B}_{ctrb}=ker(R'(\sigma))$.
12. Z-transform. (Analogous to the Laplace transform but specifically designed for discrete-time signals).
- $X(z)=\mathcal{Z}(x[n]):=\sum_{n=-\infty}^\infty x[n]\cdot z^{-n}, z\in\mathbb{C}$
- Properties:
    - linear: $\mathcal{Z}(af[k]+bg[k])=a\mathcal{Z}(f[k])+b\mathcal{Z}(g[k])=aF(z)+bG(z), k\in\mathbb{Z},z\in\mathbb{Z}$
    - Time shift to right: $\mathcal{Z}(x[k-n])=z^{-n}\mathcal{Z}(x[n])=z^{-n}X(z)$
    - Time shift to left: $\mathcal{Z}(x[k+n])=z^nX(z)-\sum_{l=0}^{n-1}x[l]z^{n-l}$. For example, $\mathcal{Z}(f[k+2])=z^2F(z)-z^2f[0]-zf[1]$.
    - Convolution: if $y[k]=\sum_{l=0}^\infty x[l]h[k-l]=\sum_{l=0}^\infty x[k-l]h[l]=:x[k]*h[k]$, then $Y(z)=X(z)H(z)$

13. Image representation: $image(M(\sigma)):=\{\omega\in(\mathbb{R}^w)^\mathbb{N}|\exists l\in(\mathbb{R}^w)^\mathbb{N},s.t.\ \omega=M(\sigma)l\}$.
- The image representation is minimal $\Leftrightarrow$ the number of latent variables is minimal (no extra variables than necessary) $\Leftrightarrow$ $M$ is full column rank.

14. Representation Theorem: the following are equivalent:
- $\mathcal{B}$ is complete LTI with $w$ variables, $m$ inputs, and $p:=w-m$ outputs.
- $\exists R\in\mathbb{R}^{p\times w}[z]$ ful row rank, such that $\mathcal{B}=ker(R(\sigma))$.
- $\exists Q\in\mathbb{R}^{p\times m}[z]$ and $P\in\mathbb{R}^{p\times p}[z]$, $\det(P)\neq0,P^{-1}Q$ proper, and $\exists \Pi\in\mathbb{R}^{w\times w}$, such that $\mathcal{B}=\mathcal{B}_{i/o}(P,Q,\Pi)$.
- $\exists A\in\mathbb{R}^{n\times n}$, $B\in\mathbb{R}^{n\times m}$, $C\in\mathbb{R}^{p\times n}$, and $D\in\mathbb{R}^{p\times m}$, and $\exists \Pi\in\mathbb{R}^{w\times w}$, such that $\mathcal{B}=\mathcal{B}_{i/s/o}(A,B,C,D,\Pi)$.
- $\exists R\in\mathbb{R}^{p\times m}[z]$ and $M\in\mathbb{R}^{p\times l}[z]$, such that $\mathcal{B}=\mathcal{B}(R,M)$.
- If the system is also controllable, then this statement is equivalent to previous ones: $\exists M\in\mathbb{R}^{w\times m}[z]$ full column rank, such that $\mathcal{B}=image(M(\sigma))$.

15. The module of Annihilators of the Behavior
- $N_\mathcal{B}:=\{n\in\mathbb{R}^w[z]|n^T(\sigma)\mathcal{B}=0\}$.
- $N_\mathcal{B}^L:=\{n\in N_\mathcal{B}|\deg(n)\leq L\}$.
- $n(z)=n_0+n_1z+\cdots+n_lz^l\in N_\mathcal{B}$ is also considered as vector with abuse of notation: $col(n_0,n_1,\cdots,n_l)$.
- Lemma. $$n\in N^L_\mathcal{B}\Leftrightarrow col^T(n_0,n_1,\cdots,n_{l-1})\mathcal{B}_{[1,l]}=0$$
- Lemma. Separate the polynomial matrix into row vectors: $R=:\left[\begin{array}{c}r^{(1)}\\ r^{(2)}\\\cdots\\ r^{(p)} \end{array}\right]$ and $\deg(r^{(i)})=:\mu_i$. If $r^{(1)},\cdots,r^{(p)}$ are independent over the ring of polynomials, then the vectors and their shifts ($r^{(1)}(z),zr^{(1)}(z),\dots,z^{l-\mu_1-1}r^{(1)}(z),\cdots,r^{(p)}(z),zr^{(p)}(z),\dots,z^{l-\mu_p-1}r^{(p)}(z)$) are independent over the field of reals.
- Polynomial vectors are independent over the ring of polynomials. For example, $v_1=(1,x),v_2=(x,x^2)\in\mathbb{R}^2[x]$ and independent over the ring of polynomials, then the only polynomials $p_1(x),p_2(x)$ that satisfy $p_1(x)v_1+p_2(x)v_2=0$ are zero polynomials.
- Polynomial vectors are independent over the field of reals. The only real numbers that satisfy $av_1+bv_2=0$ are zeros.
- The annihilators set can be constructed by $$N_\mathcal{B}^L=image(r^{(1)}(z),zr^{(1)}(z),\dots,z^{l-\mu_1-1}r^{(1)}(z),\cdots,r^{(p)}(z),zr^{(p)}(z),\dots,z^{l-\mu_p-1}r^{(p)}(z))$$
- $image$ means the set include a vector and vectors obtained by linear transformation of that vector.
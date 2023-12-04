1. Behavioral systems: $$\Sigma = (T,W,\mathcal{B})$$
- note: different between T and W: in a differential model, T consists of independent variables. For example, $\frac{\partial}{\partial t}T=\frac{\partial^2}{\partial x^2}T+q$, $T=\{x,t\}=\mathbb{R}^2,W=\{q,T\}=\mathbb{R}^2$.
2. Trajectory: $$\omega:T\rightarrow W\begin{cases}\omega\in\mathcal{B}, \texttt{the model allows } \omega\\ \omega\notin\mathcal{B}, \texttt{the model forbids } \omega\end{cases}$$
3. Convert I/O system to behavioral system: $$T=R\\ W=U\times Y \texttt{(input x output signal spaces)} \\ \mathcal{B} = \texttt{all input/output pairs}$$
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
- Differential equation: $R_0\omega+R_1\frac{d}{dt}\omega+\cdots+R_n\frac{d^n}{dt^n}\omega=0(*)$
- Polynomial matrix: $R(\xi)=R_0+R_1\xi+\cdots+R_n\xi^n$. Therefore, $(*)\Leftrightarrow R(\frac{d}{dt})\omega=0\Rightarrow \mathcal{B}=ker(R(\frac{d}{dt}))$ and $R(\frac{d}{dt})\omega=0$ is a kernel representation of the LTI differential system.
7. LTI diferential system with latent variables:
- Full behavior $$\mathcal{B}_{full}=\{(\omega,l):\mathbb{R}\rightarrow\mathbb{R}^{w+l}|R(\frac{d}{dt})\omega=M(\frac{d}{dt})l\}$$
- Manifest behavior $$\mathcal{B}=\{\omega:\mathbb{R}\rightarrow\mathbb{R}^{w}|\exists l:\mathbb{R}\rightarrow\mathbb{R}^l, s.t. R(\frac{d}{dt})\omega=M(\frac{d}{dt})l\}$$
8. n-Dimensional systems. $\Sigma=(\mathbb{R}^n, \mathbb{R}^w,\mathcal{B})$.
$$R\in\mathbb{R}^{\cdot\times w}[\xi_1,\cdots,\xi_n], R(\frac{\partial}{\partial x_1}, \cdots, \frac{\partial}{\partial x_n})\omega=0$$
- $\cdot$ means the number of equations.
- n-D systems group is denoted as $\mathcal{L}^w_n$. n is the number of independent variables and w is the number of dependent variables.
- A system is LTI $\Leftrightarrow \Sigma\in\mathcal{L}$ or $\mathcal{B}\in\mathcal{L}$.
9. Annihilators. $n_\mathcal{B}:=\{n\in\mathbb{R}^w[\xi_1,\cdots,\xi_n]|n^\texttt{T}(\frac{\partial}{\partial x_1}, \cdots, \frac{\partial}{\partial x_n})\mathcal{B}=0\}$
- The annihilators is the sub-module of $\mathbb{R}^w[\xi_1,\cdots,\xi_n]$, denoted as $n_\mathcal{B}=<R>$.
- Two system is the same if and only if $<R_1>=<R_2>$.
10. Properties of $\mathcal{L}$, for any $\mathcal{B}_1, \mathcal{B}_2\in \mathcal{L}$
- Intersection $\mathcal{B}_1\cap\mathcal{B}_2\in\mathcal{L}$
- Addition $\mathcal{B}_1 + \mathcal{B}_2\in\mathcal{L}$
- Projection $\mathcal{B}\in\mathcal{L}^{w_1+w_2}\Rightarrow \prod_{w_1}\mathcal{B}\in\mathcal{L}^{w_1}$

11. Controllability
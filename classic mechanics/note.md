# Classic Mechanics

## paritcal Kinematics
---------------------
1. Conserved quantity
- If a function $Q(r,p,t)$, where $r$ is the position and $p$ is the momenta, remains unchanged when evaluated along the actual motion, $\frac{dQ(r(t),p(t),t)}{dt}=0$, then the function is a conserved quantity.
- A single paricle with no forces has six independent conserved quantities:
    - three from each dimension: $Q(r,p,t)=r(t)-tp(t)/m=0$.
    - three from each dimension: $dQ/dt=\dot{r}-p/m-t\dot{p}/m=0$.
    - The total energy: $dE/dt=dT/dt+dU/dt=F\cdot v+\overrightarrow{\bigtriangledown}U\cdot\frac{dr}{dt}$. Since $U(r+\Delta r)-U(r)=-F\cdot \Delta r$, $dE/dt=F\cdot v-v\cdot F=0$.
2. Systems of Particles
- center of mass: $R=\frac{\sum{m_ir_i}}{\sum{m}}$
- total momentum: $P=M\frac{dR}{dt}$
- total angular momentum: $L=\sum{r_i\times p_i}=\sum{r_i'\times p_i'}+R\times P$
- Kinetic energy: $T=\frac{1}{2}\sum{m_iv_i^2}=\frac{1}{2}\sum{m_iv_i'^2}+\frac{1}{2}MV^2$
- Holonomic constraints: the constraints can be phrased on coordinates and time only, as $\Phi_i(r_1,\cdots,r_n,t)=0,\ i=1,\cdots,k$. A $3n-k$ dimensional manifold is determined by the constraints in configuration space to which all motion of the system is confined. Let $q_j,j=1,\cdots,3n-k$ be the generalized coodinates, and then we have $r_i=r_i(q_1,\cdots,q_{3n-k},t)$, determined by $\Phi(\{r_i\})=0$. 
    - note: $3n-k$ is also knowned as the degree of freedom of the system, if the systmem is a rigid body.
    - notice that the constraints should only includes $r$ and $t$.
- Generalized force: Potential force in the generalized coordinates $\{q\}$.
    - For $k=1,\cdots,n$ (nomal coordinates), $F_k=-\frac{\partial U(\{x\})}{\partial x_k}=\sum_j\frac{\partial q_j}{\partial x_k}Q_j$, $Q_j:=-\frac{\partial U(\{x(\{q\})\})}{\partial q_j}$.
- Kinetic energy in generalized coordinates $\{q\}$.
    - $T=\frac{1}{2}\sum_{j,k,l}m_j\frac{x_j}{q_k}\frac{x_j}{q_k}\dot{q_k}\dot{q_l}+\sum_{j,k}m_j\frac{x_j}{q_k}\dot{q_k}\frac{\partial x_j}{\partial t}|_q+\frac{1}{2}\sum_j m_j(\frac{\partial x_j}{\partial t}|_q)^2$.
    - If the coordiante is time independent, $T=\frac{1}{2}\sum_{kl}M_{kl}(\{q\})\dot{q_k}\dot{q_l}$, where $M_{kl}(\{q\})=\sum_j m_j\frac{x_j}{q_k}\frac{x_j}{q_k}$, and known as the mass matrix.

3. Phase Space
- $\eta=(r_1,r_2,r_3,p_1,p_2,p_3)$. notice that $\frac{dr}{dt}=\frac{p}{m},\ \frac{dp}{dt}=F(r,p,t)$.
- velocity function for the phase point: $\frac{d\eta}{dt}=V(\eta,t)$. Order of this equation is the *order* of the dynamical system. If $V=V(\eta)$ (independent on time), the system is *autonomous*.
- Fixed points: $V(\eta_k)=0$. Types of fixed point: strongly stable, and structually unstable.

## Reformulation of Newtonian mechanics: Lagrange's and Hamilton's Equations
-----------------------
1. Lagrangians: $L := T-U$
- Newtonian to Lagrangian: $m\ddot{x}=F\Rightarrow dp/dt=-\partial U/\partial x\Rightarrow \frac{d}{dt}\frac{\partial T}{\partial \dot{x}}=-\partial U/\partial x \Rightarrow \frac{d}{dt}\frac{\partial T-U}{\partial \dot{x}}=\frac{\partial T-U}{\partial x} \Rightarrow \frac{d}{dt}\frac{\partial L}{\partial \dot{x}}-\frac{\partial L}{\partial x}=0$
- Let $L = T-U$ for the sake of simplication of the equation.
- Lagrange's Equation in generalized coordinates: $\frac{d}{dt}\frac{\partial L}{\partial \dot{q_j}}-\frac{\partial L}{\partial q_j}=0$

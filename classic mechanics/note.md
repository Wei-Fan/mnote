# Classic Mechanics

## paritcal Kinematics
---------------------
1. Conserved quantity
- If a function $Q(r,p,t)$, where $r$ is the position and $p$ is the momenta, remains unchanged when evaluated along the actual motion, $\frac{dQ(r(t),p(t),t)}{dt}=0$, then the function is a conserved quantity.
- A single paricle with nno forces has six independent conserved quantities:
    - three from each dimension: $Q(r,p,t)=r(t)-tp(t)/m=0$.
    - three from each dimension: $dQ/dt=\dot{r}-p/m-t\dot{p}/m=0$.
    - The total energy: $dE/dt=dT/dt+dU/dt=F\cdot v+\overrightarrow{\bigtriangledown}U\cdot\frac{dr}{dt}$. Since $U(r+\Delta r)-U(r)=-F\cdot \Delta r$, $dE/dt=F\cdot v-v\cdot F=0$.
2. Systems of Particles
- center of mass: $R=\frac{\sum{m_ir_i}}{\sum{m}}$
- total momentum: $P=M\frac{dR}{dt}$
- total angular momentum: $L=\sum{r_i\times p_i}=\sum{r_i'\times p_i'}+R\times P$
- Kinetic energy: $T=\frac{1}{2}\sum{m_iv_i^2}=\frac{1}{2}\sum{m_iv_i'^2}+\frac{1}{2}MV^2$
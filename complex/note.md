# Complex analysis

### Algebra of the complex plane
---------------------
1. vector and complex number: $(x,y)=(x,0)+(0,1)(y,0)=(x,y)$
2. Modulus: $|z|=\sqrt{x^2+y^2}$
- $|z_1+z_2|\leq|z_1|+|z_2|$
- $|z_1z_2|=|z_1||z_2|$
- $||z_1|-|z_2||\leq|z_1-z_2|$
3. Complex conjugate: $\bar{z}=x-iy$
- $\overline{z_1+z_2}=\bar{z_1}+\bar{z_2}$
- $\overline{z_1z_2}=\bar{z_1}\bar{z_2}$
- $re(z)=\frac{1}{2}(z+\bar{z})$
- $im(z)=\frac{1}{2i}(z-\bar{z})$
- $|z|^2=z\bar{z}$
4. Polar Coordinates: $z=x+iy=r(\cos\theta+i\sin\theta)=re^{i\theta}$

### Topology of the complex plane
----------------------
1. $\epsilon$-neighbourhood: $N_{\epsilon}(z_0)=\{|z-z_0|<\epsilon\}$.
2. A subset $S\subseteq \mathbb{C}$ is **closed** $\Longleftrightarrow$ $S$ contains all its limit points.
3. The **closure** of a subset $S\subseteq\mathbb{C}$ is the intersection of all closes subsets that contain $S$.
4. Limits of functions: $\lim_{z\rightarrow z_0}f(z)=l\Longleftrightarrow\forall \delta>0,\exist \epsilon(\delta) >0,s.t.\forall z\in S,0<|z-z_0|<\delta,|f(z)-l|<\epsilon$.
5. Continuity of functions: $f$ is continuous at $z_0$ $\Longleftrightarrow\forall \epsilon>0,\exist \delta(\epsilon) >0,s.t.\forall z\in S,0<|z-z_0|<\delta,|f(z)-f(z_0)|<\epsilon$.
6. Path: is a complex function $\gamma:[a,b]\rightarrow\mathbb{C},a\leq b\in \mathbb{R}$. Initial point is $\gamma(a)$ and final point is $\gamma(b)$.

### Differentiation
----------------------
1. $f$ is differentiable at $z_0$ if $\lim_{z\rightarrow z_0}\frac{f(z)-f(z_0)}{z-z_0}$ exists.
2. Cauchy-Riemann Equations.
- We have
    1. $f(z) = u(x,y)+iv(x,y)$, where $u,v$ are real functions.
    2. $f$ is differentiable at $z=x+iy$
- We got
    1. $\frac{\partial u}{\partial x},\frac{\partial u}{\partial y},\frac{\partial v}{\partial x},\frac{\partial v}{\partial y}$ all exist at $(x,y)$.
    2. $\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}\ \frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}$
3. Path function $f:[a,b]\rightarrow\mathbb{C}$ is differentiable if $\lim_{t\rightarrow t_0}\frac{f(t)-f(t_0)}{t-t_0}$.

### Integration
----------------------
1. Integration of path function: $f(t)=u(t)+iy(t)$: $\int_a^b f=\int^b_au(t)dt+i\int^b_av(t)dt$.
2. Integration along smooth path: $f(z),\gamma(t),t\in[a,b]$: $\int_\gamma f=\int_a^bf(\gamma(t))\gamma'(t)dt$.
3. The length of a smooth path: $L(\gamma)=\int_a^b|\gamma'(t)|dt$.

### Angles, Logarithms, and the Winding Number
----------------------
1. argument: $\arg z=\theta=\sin^{-1}\frac{\texttt{im} z}{|z|}=\cos^{-1}\frac{\texttt{re} z}{|z|}$
2. logarithm: $\log z=\log r+i(\theta+2n\pi)=\log |z|+i(\arg z+2n\pi)$.
3. the winding number: the number of times that a closed path $\gamma$ winds round the origin.
- A continuous choice of argument: $\theta(t)$ is a choice if it satisfies $e^{i\theta(t)}=\frac{\gamma(t)}{|\gamma(t)|}$ and $\theta(t)$ is a continuous function of $t$.
- the winding number of a path $\gamma:[a,b]\rightarrow\mathbb{C}\backslash 0$: $\omega(\gamma,0)=\frac{\theta(b)-\theta(a)}{2\pi}$ for a continuous choice of argument $\theta$ along $\gamma$.
- note: to calculate the winding number, just choose one continuous choice of argument.
4. the winding number as an integral: let $\gamma$ be a closed contour. Then, $\omega(\gamma,0)=\frac{1}{2\pi i}\int_{\gamma}\frac{1}{z}dz$
- the winding number around an arbitrary point: $\omega(\gamma,z_0)=\frac{1}{2\pi i}\int_\gamma\frac{1}{z-z_0}dz$
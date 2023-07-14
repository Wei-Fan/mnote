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
4. Polar Coordinates: $z=x+iy=r(\cos\theta+i\sin\theta)$

### Topology of the complex plane
----------------------
1. $\epsilon$-neighbourhood: $N_{\epsilon}(z_0)=\{|z-z_0|<\epsilon\}$.
2. A subset $S\subseteq \mathbb{C}$ is **closed** $\Longleftrightarrow$ $S$ contains all its limit points.
3. The **closure** of a subset $S\subseteq\mathbb{C}$ is the intersection of all closes subsets that contain $S$.
4. Limits of functions: $\lim_{z\rightarrow z_0}f(z)=l\Longleftrightarrow\forall \delta>0,\exist \epsilon >0,s.t.\forall z\in S,0<|z-z_0|<\delta,|f(z)-l|<\epsilon$.
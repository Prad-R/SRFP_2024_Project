## Boltzmann Equation

- **General Information**
	- The [Boltzmann equation](https://en.wikipedia.org/wiki/Boltzmann_equation) or the Boltzmann Transport Equation (BTE) describes the statistical behaviour of a thermodynamic system not in a state of equilibrium.
	- The equation is not the result of analysing every individual particle but is rather a result of considering a probability distribution of position and momentum of a typical particle. In other words, it's the probability that a particle occupies a very small region of space centred around $` \vec{r} `$ (represented as $` d^3\vec{r} `$) and a momentum nearly equal to $` \vec{p} `$ (represented as$` d^3\vec{p} `$) at an instant of time.
- **The phase space and density function**
	- The set of all positions $` \vec{r} `$ and momenta $` \vec{p} `$ parameterised by time $t$ is called the _phase space_ of the system. This space is 6-dimensional.
	- If we define a probability distribution function $` f(\vec{r}, \vec{p}, t) `$, then we obtain the number of particles in $` d^3 \vec{r} d^3 \vec{p} `$ as 
	
	$$dN = f(\vec{r}, \vec{p}, t) d^3 \vec{r} d^3 \vec{p}$$
	
	- Integrating over positions and momenta, we obtain
	
	$$N = \int\_{momenta} d^3 \vec{p} \int\_{positions} d^3 \vec{r} f(\vec{r}, \vec{p}, t)$$
	
	where $N$ is the total number of particles having positions and momenta in that region.
- **Principal statement**
	- The general equation is given by
	
	$$\frac{df}{dt} = \left( \frac{\partial f}{\partial t} \right)\_{force} + \left( \frac{\partial f}{\partial t} \right)\_{diff} + \left( \frac{\partial f}{\partial t} \right)\_{coll}$$
	
	where the force term corresponds to the forces exerted on the particles by an external influence, _diff_ refers to the diffusion of the particles and _coll_ refers to the forces due to particle collisions.
	- The force and diffusion terms : -
		- Suppose there are particles with position $` \vec{r} `$ in $` d^3 \vec{r} `$ and momentum $` \vec{p} `$ in $` d^3 \vec{p} `$ at time $` t `$. If $\vec{F}$ acts instantaneously on all particles, then at $` t + \Delta t `$, we have $` \vec{r} + \Delta \vec{r} = \vec{r} + \frac{\vec{p}}{m} \Delta t `$ and $` \vec{p} + \Delta \vec{p} = \vec{p} + \vec{F} \Delta t `$. In the absence of collisions, if we write an equation for the number of particles, we obtain,
		
		$$f(\vec{r} + \frac{\vec{p}}{m} \Delta t, \vec{p} + \vec{F} \Delta t, t + \Delta t) d^3\vec{r} d^3\vec{p} = f(\vec{r}, \vec{p}, t) d^3\vec{r} d^3\vec{p}$$
		
		In the above equation, we have used the fact that the phase space volume element is constant.
		
		- However, if there are collisions, the particle density in phase space volume changes and as a result we obtain,
		
		$$dN\_{coll} = \left( \frac{\partial f}{\partial t} \right)\_{coll} \Delta t d^3\vec{r} d^3\vec{p}$$ 
		
		$$\hspace{500pt} = f(\vec{r} + \frac{\vec{p}}{m} \Delta t, \vec{p} + \vec{F} \Delta t, t + \Delta t) d^3\vec{r} d^3\vec{p} - f(\vec{r}, \vec{p}, t) d^3\vec{r} d^3\vec{p}$$
		
		$$\hspace{500pt} = \Delta f d^3\vec{r} d^3\vec{p}$$
		
		dividing by the phase space volume and $` \Delta t `$ and taking $` \Delta f, \Delta t \to 0 `$, we obtain,
		
		$$\frac{df}{dt} = \left( \frac{\partial f}{\partial t} \right) _{coll}$$
		
		- The total differential of $` f `$ is,
		
		$$df = \frac{\partial f}{\partial t} dt + \left( \frac{\partial f}{\partial x} dx + \frac{\partial f}{\partial y} dy + \frac{\partial f}{\partial z} dz \right) + \left( \frac{\partial f}{\partial p_x} dp_x + \frac{\partial f}{\partial p_y} dp_y + \frac{\partial f}{\partial p_z} dp_z \right)$$
		
		$$= \frac{\partial f}{\partial t} dt + \vec{\nabla}f \cdot \frac{\vec{p}}{m}dt + \vec{\nabla}_p f \cdot \vec{F}dt$$
		
- **The Final Statement**
	- Dividing the above equation by $` dt `$ and, we obtain,
	
	$$\frac{\partial f}{\partial t} dt + \vec{\nabla}f \cdot \frac{\vec{p}}{m} + \vec{\nabla}_p f \cdot \vec{F} = \left( \frac{\partial f}{\partial t} \right)\_{coll}$$
	
- **Conservation Equations**
	- The number density is given by
	
	$$n = \int\_{momenta}	f d^3\vec{p}$$
	
	- The average value of any function $` A `$ is given by
	
	$$\langle A \rangle = \frac{1}{n} \int\_{momenta} A f d^3\vec{p}$$
	
	- If we multiply the entire Boltzmann equation with $A$ and integrate with respect to momentum volume, we obtain 4 equations given as
	
	$$\int A \frac{\partial f}{\partial t} d^3\vec{p} = \frac{\partial}{\partial t} \left( n \langle A \rangle \right)$$
	
	$$\int \frac{p\_jA}{m} \frac{\partial f}{\partial x\_j} d^3\vec{p} = \frac{1}{m} \frac{\partial}{\partial x\_j} \left( n \left\langle Ap\_j \right\rangle \right)$$
	
	$$\int A F\_j \frac{\partial f}{\partial p\_j} d^3\vec{p} = - n F\_j \left\langle \frac{\partial A}{\partial p\_j} \right\rangle$$
	
	$$\int A \left( \frac{\partial f}{\partial t} \right)\_{coll} d^3\vec{p} = 0$$
	
	- Zeroth moment
		- If we let $` A = m(v_i)^0 = m `$, the integrated Boltzmann equation becomes the mass conservation equation. Note that we use $` nm = \rho `$.
	- First moment
		- If we let $` A = m(v_i)^1 = p_i `$, the integrated Boltzmann equation becomes the momentum conservation equation.
	- Second moment 
		- If we let $` A = m(v_i)^2 = \frac{p_i p_i}{2m} `$, the KE of the particle, the integrated Boltzmann equation becomes the energy conservation equation.

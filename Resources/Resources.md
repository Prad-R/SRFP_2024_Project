# Resources

## Direct Simulation Monte Carlo (DSMC)

Below, the content related to the [Wikipedia page](https://en.wikipedia.org/wiki/Direct_simulation_Monte_Carlo) is mentioned.

- **General Information**
	- The DSMC method is used whenever the Knudsen number is of other order of 1. Right now used in MEMS and Space Shuttle Re-entry Aerodynamics.
	- It models fluid flows using probabilistic simulation molecules to solve the [Boltzmann equation](https://en.wikipedia.org/wiki/Boltzmann_equation). Here's the [link](#boltzmann-equation) to the section discussing it in brief.
- **DSMC Algorithm**
	- State of the system is given by the positions and velocities of the particles $\{ \vec{r_i}, \vec{v_i} \}$ where $i = 1, 2, 3, \cdots, N$ and $N$ is the number of particles.
	- Each DSMC particle represents $F_N$ particles in physical space with approximately the same positions and velocities.
	- The system volume is given by $V = \frac{NF_N}{n}$ where $n$ is the number density.
	- The evolution of the system is integrated in time steps $\tau$ of the order of mean collision time.
	- Without external forces like gravity, the particles are said to move balistically, i.e., $\vec{r}_i(t + \tau) = \vec{r}_i(t) + \vec{v}_i(t)$.
	- If a particle reaches a boundary, it's position and velocity are reset accordingly.
	- After all particles are moved, they are put into cells within which they randomly collide based on collision rates and probabilities obtained from the Kinetic Theory of Gases.
	- After the velocities of the colliding particles are reset, statistical sampling is performed and the process is repeated.
- **Collisions**
	- The dimension of each collision cell is no longer than a mean free path. All particles in a cell are collision candidates, regardless of their actual trajectories.
	- The specifics of collision depend on the molecular interaction model. For the _hard spheres_ model, the collision probability for the pair of particles $i$ and $j$ is proportional to their relative speed,
	
	$$P\_{coll}[i, j] = \frac{|\vec{v}\_i - \vec{v}\_j|}{\Sigma\_{m=1}^{N\_c} \Sigma\_{n=1}^{m-1} |\vec{v}\_m - \vec{v}_n|}$$
	
	$N_c$ is the number of particles in the cell.
	- The double summation in the denominator can be computationally intensive, so we use a technique called _rejection sampling_ to select collision pairs.
	- Rejection sampling is performed as follows : -
		- A pair of candidates particles $i$, $j$ is chosen at random and their relative velocity magnitude is computed.
		- The pair is accepted as a collision pair if $v_r > v_{r_{max}} \cdot \mathcal{R}$ where $\mathcal{R}$ is a uniform random number in $[0,1)$.
		- If the pair of particles are accepted, their velocities are reset but their positions are unchanged.
		- Perform the steps again.
	- After a collision pair is chosen, their post collision velocities $` v_i^* `$ and $` v_j^* `$ are evaluated.
	- The relative velocity in terms of the spherical angles $\theta, \phi$ is given by
	
	$$\vec{v_r^*} = v\_r [(sin\theta cos\phi) \hat{x} + (sin\theta sin\phi)\hat{y} + cos\theta \hat{z}]$$
	
	and these angles are selected by some Monte Carlo process with distributions given by the selected collision model. For the hard spheres model, these angles are uniformly distributed over the unit sphere. The azimuthal angle is between $0$ and $2\pi$, and is written as $` \phi = 2\pi \mathcal{R}_1 `$ where $` \mathcal{R}_1 `$ is a uniform deviate in $[0,1)$.
	- The polar angle is ditributed according to 
	
	$$P_\theta (\theta) d\theta = \frac{1}{2} sin\theta d\theta$$
	
	- If we use the change of variables $q = -cos\theta$, we obtain
	
	$$P_q(q)dq = \frac{1}{2}dq$$
	
	where we can write $` q = 2 \mathcal{R}_2 - 1 `$ where $` \mathcal{R}_2 `$ is a uniform deviate in $` [0,1) `$.
	- The post collision velocities are set as
	
	$$\vec{v}\_i^* = \vec{v}\_{cm}^* + \frac{1}{2} \vec{v}\_r^* \qquad \vec{v}\_j^* = \vec{v}\_{cm}^* - \frac{1}{2} \vec{v}\_r^*$$
	
	- By conservation of momentum and energy, the velocity of the CoM and the relative speed are unchanged.
	- This process is repeated for every pair of particles.
	- The total number of hard sphere collisions given in a cell during a time $` \tau `$ is given by
	
	$$M\_{coll} = \frac{1}{2} (N\_c - 1) F\_N f\_{coll} \tau = \frac{N\_c (N\_c - 1) F\_N \pi d^2 \langle v\_r \rangle \tau}{2 V\_c}$$
	
	where $` f_{coll}`$ is the collision frequency given by KTG, $` d `$ is the diameter of the cell and $` V_c `$ is the volume of the cell.
	- The ratio of total accepted to the total number of candidates for hard sphere particles is given by 
	
	$$\frac{M_{coll}}{M_{cand}} = \frac{\langle v\_r \rangle}{v\_r^{max}}$$
	
## Boltzmann Equation

- **General Information**
	- The Boltzmann equation or the Boltzmann Transport Equation (BTE) describes the statistical behaviour of a thermodynamic system not in a state of equilibrium.
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
		
		$$
		\begin{align*}
		dN_{coll} = \left( \frac{\partial f}{\partial t} \right)_{coll} \Delta t d^3\vec{r} d^3\vec{p} \\
		= f(\vec{r} + \frac{\vec{p}}{m} \Delta t, \vec{p} + \vec{F} \Delta t, t + \Delta t) d^3\vec{r} d^3\vec{p} - f(\vec{r}, \vec{p}, t) d^3\vec{r} d^3\vec{p} \\
		= \Delta f d^3\vec{r} d^3 \vec{p}
		\end{align*}
		$$
		
		dividing by the phase space volume and $` \Delta t `$ and taking $` \Delta f, \Delta t \to 0 `$, we obtain,
		
		$$\frac{df}{dt} = \left( \frac{\partial f}{\partial t} \right) _{coll}$$

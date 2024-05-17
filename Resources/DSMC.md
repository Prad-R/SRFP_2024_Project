# Resources

## Direct Simulation Monte Carlo (DSMC)

Below, the content related to the [Wikipedia page](https://en.wikipedia.org/wiki/Direct_simulation_Monte_Carlo) is summarized.

- **General Information**
	- The DSMC method is used whenever the Knudsen number is of other order of 1. Right now used in MEMS and Space Shuttle Re-entry Aerodynamics.
	- It models fluid flows using probabilistic simulation molecules to solve the [Boltzmann equation](Resources/Boltzmann_Equation.md). 
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
	
	$$\frac{M\_{coll}}{M\_{cand}} = \frac{\langle v\_r \rangle}{v\_r^{max}}$$

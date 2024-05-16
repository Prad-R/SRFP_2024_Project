## Direct Simulation Monte Carlo (DSMC)

Below, the content related to the [Wikipedia page](https://en.wikipedia.org/wiki/Direct_simulation_Monte_Carlo) is mentioned.

- **General Info**
	- The DSMC method is used whenever the Knudsen number is of other order of 1. Right now used in MEMS and Space Shuttle Re-entry Aerodynamics.
	- It models fluid flows using probabilistic simulation molecules to solve the [Boltzmann Equation](https://en.wikipedia.org/wiki/Boltzmann_equation).
- **DSMC Algorithm**
	- State of the system is given by the positions and velocities of the particles $\{ \vec{r_i}, \vec{v_i} \}$ where $i = 1, 2, 3, \cdots, N$ and $N$ is the number of particles.
	- Each DSMC particle represents $F_N$ particles in physical space with approximately the same positions and velocities.
	- The system volume is given by $V = \frac{NF_N}{n}$ where $n$ is the number density.
	- The evolution of the system is integrated in time steps $\tau$ of the order of mean collision time.
	- Without external forces like gravity, the particles are said to move balistically, i.e., $\vec{r}_i(t + \tau) = \vec{r}_i(t) + \vec{v}_i(t)$.
	- If a particle reaches a boundary, it's position and velocity are reset accordingly.
	- After all particles are moved, they are put into cells within which they randomly collide based on collision rates and probabilities obtained from the Kinetic Theory of Gases.
	- After the velocities of the colliding particles are reset, statistical sampling is performed and the process is repeated.
	$$\Sigma$$
- **Collisions**
	- The dimension of each collision cell is no longer than a mean free path. All particles in a cell are collision candidates, regardless of their actual trajectories.
	- The specifics of collision depend on the molecular interaction model. For the _hard spheres_ model, the collision probability for the pair of particles $i$ and $j$ is proportional to their relative speed,
	```math 
	P_{coll}[i, j] = \frac{|\vec{v}_i - \vec{v}_j|}{\Sigma_{m=1}^{N_c} \Sigma_{n=1}^{m-1} |\vec{v}_m - \vec{v}_n|}
	```

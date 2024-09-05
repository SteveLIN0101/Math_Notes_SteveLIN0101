Great Financial Crisis (GEFC)

## Introduction

-  formal analytical tools in macroeconomics, including:
	- overlapping-generation models,
	- infinite-horizon models with representative agents,
	- dynamic general equilibrium approach.
- some tools, including:
	- the general equilibrium and simple dynamic models
	- the theory of economic growth, with a particular emphasis on 
		- the Solow growth model
		- Ramsey model
	- models with endogenous technical progress.
- Macroeconomic fluctuations, especially the real-business-cycles theory,
- A treatment of the microeconomic foundations of nominal rigidities, consumption and investment prepares the ground for a detailed analysis of macroeconomic policies.
- monetary theory and policy. its short-run and long-run effects, the transmission mechanism and the case for policy rules.
- final part of the course is on open economy macroeconomics, including
	- the determination of exchange rate,
	- the current account adjustment
	- the discussion of exchange rate regimes

## Outline

Part 1: Review of the basic tools
1. Issues, Models and Techniques 
2. Simple Dynamic Stochastic General Equilibrium Models
Part 2: Growth
1. Solow Growth Model
2. Ramsey Model
3. Endogenous Growth
Part 3: Fluctuations
1. Real Business Cycle Models
2. Money, Nominal Rigidity and New Keynesian models of Fluctuations
Part 4: Monetary Policies
1. Goals of Monetary Policy and Zero Lower Bound
2. Yield Curve and Monetary Policy
Part 5: Open Economy Macroeconomics
1. Mundell-Fleming Model


- DSGE: Dynamic Stochastic General Equilibrium
- HP filter

## Issues

What questions will we address in Macroeconomics?

- Micro- individual's choices, individual/firm's behaviors
- Macro- The study of the economy as a whole. It is therefore concerned with some of the most important questions in economies.
- Typically macro broken into **growth** (what we care in the long-run) and **cycles** (what we care in the short run).
	- Eg. **rule of 70**: If the GDP of  a economy grow with rate $g$, then it takes $\frac{70}{g}$ years for its GDP to double.
	- Great Moderation: USA, mid-1980s to 2007
	- Why some countries are rich
- Models - what methodology do we use to look at the economy?
	- An "abstract model" is a simplified description capturing essential elements of a situation. Its purpose is to provide insights about particular features of the world;
	- Simplifying assumptions always exist so that we can use the model to study and understand the question
- Techniques - what tools do we need to study these questions and models?
	- We need some mathematical tools to study the questions, build the model, solve the model and answer the question we are interested in.
	- if want to learn further, take ECON 5210 
	- constraint optimization - Lagrangian method
	- log-linear?
	- Calculus

### Issues: Economic Growth
- Most economic exhibit sustained growth in GDP per ca pita
- Key questions:
	1. Do poor countries grow faster than rich ones? Or, do we see convergence among countries?
		- Poor samples in 1960s: no convergence
		- There is a convergence for OECD & Asia countries: a lower GDP per ca pita in 1960 is associated with  a higher growth rate
		- No for African countries
	2. What are sources of economic growth? Capital accumulation? Human capital investment? Technology improvement? Institution?
	3. What shall we do to enhance (for poor countries) or  sustain (for rich countries) economic growth?
	
## Saving and Growth

- Fast-growing economies are often associated with high saving rates: 
	- JP in 1960s; HK, TW, KR in 1980s; 
		- all with an average above 30%
	- BRICs 1998-2008: 
		- rise in Brazil 4%, Russia 15%, India 12%
		- China up 12%, with an average of 50% between 2004-2008

## Issues: Business Cycles (Economic Fluctuations)

- What are business cycles?
	- Burns and Mitchell (1913, 1927, 1946): 
		- expansions occurring at the same time in many economic sectors, followed by similarly general recessions, contractions and revivals.
	- fluctuations occurs in aggregate activity, not in particular sectors.
	- cycles are recurrent, but not periodic
	- 2 different stages: expansions and contractions
	- there are regular and predictable co - movements between variable over the cycles - C I L Y.

## Questions on Business Cycles

- What are the empirical characteristics of business cycles?
	- Volatility, persistence, co-movement of the major aggregates
- What brings about business cycles? What propagates them?
- What kind of shocks?
	- demand shocks:
	- supply shocks/ technology shocks,
- Who is mostly affected and how larger would be the welfare gains of eliminating business cycles?
- What is the role of policies?
- Central question - are business cycles efficient?
	- **RBC theory**: Business Cycle is natural implication of dynamic economies with shocks to technology - all markets clear. Therefore, the business cycles are efficient.
		- Still have difficulties in explaining co-movements of some major aggregate variable
	- **Alternative view**: emphasize the role of nominal rigidities (sticky price or sticky wages) in propagating technology shocks to the whole economy- not all markets clear.
	- **New Approach**: formulating policy relevant models based on dynamic general equilibrium and nominal rigidities
- Both RBC model and New Keynesian theories downploy role of financial markets in business cycles.
- Third view, **credit channel**: imperfections in lending market critical to economics fluctuations.



- Question: How to decompose the time series into a long-run trend component and a business cycle component? What is growth component and what is cyclical component?

## Cyclical Component

- What part of the data is considered a growth phenomenon and what is considered a business cycle phenomenon is somewhat arbitrary.
- While it is clear that "business cycle fluctuations" are the deviation of  a key economic variable of interest (mostly real GDP) from a growth trend, what is unclear is how to model this growth trend.
- Assume long-run growth trend grows at a constant rate $g$ over time:
$$ Y_{t}^{\text{trend}} = Y_{s}^{\text{trend}}(1+g)^{t-s} \implies $$
$$ \log (Y_{t}^{\text{trend}}) = \log (Y_{s}^{\text{trend}} ) + (t-s) \log (1+g) $$
$$\text{Approximately, we have} \quad y_{t}^{\text{trend}} = y_{s}^{\text{trend}} g $$
$$ \log (1+g) \sim g \ \text{ for } g \text{ small enough}, \ g \to 0 $$

- Business Cycle component can be expressed as
$$ y_{t} = \log(Y_{t}) - \log(Y_{t}^{\text{trend}}) $$
	By using logs, the deviation of actual log real GDP from trend equals percentage deviation from trend.
$$ \begin{equation}

\begin{aligned}
y_{t} &= \log \left( \frac{Y_{t}}{Y_{t}^{\text{trend}}} \right) \\
&= \log \left( \frac{Y_{t} - Y_{t}^{\text{trend}}}{Y_{t}^{\text{trend}}} + 1 \right) \\
&\approx \frac{Y_{t} - Y_{t}^{\text{trend}}}{Y_{t}^{\text{trend}}} 

\end{aligned} 

\end{equation} $$
- Here use the property that $\log(1+x)\approx x$ when $x$ is close to zero.

- Business cycles are characterized by **substantial deviations** from the long run growth trend. (**Linear Detrending**)

### Hodrick-Prescott filter

- We want to decompose the raw data, $\log(Y_{t})$ into 
	- a growth trend $y_{t}^{\text{trend}} = \log(Y_{t}^{\text{trend}})$ , and 
	- a cyclical component $y_{t} = \log(Y_{t}^{\text{cycle}})$  such that
$$ \log(Y_{t}) = \log(Y_{t}^{\text{trend}}) + \log(Y_{t}^{\text{cycle}}) $$
$$ y_{t} = \log(Y_{t}) - y_{t}^{\text{trend}} $$

- The HP-filter proposes to make this decomposition by solving the following minimization problem
$$ \min_{y_{t}, y_{t}^{\text{trend}}} \sum_{t=1}^{T} \left( \log(Y_{t}) - y_{t}^{\text{trend}} \right)^{2} + \lambda \sum_{t=1}^{T} \left[ (y_{t+1}^{\text{trend}} - y_{t}^{\text{trend}} ) - (y_{t}^{\text{trend}} - y_{t-1}^{\text{trend}} )   \right]^{2}  $$
$$ \text{ subject to } \quad y_{t} + y_{t}^{\text{trend}} = \log (Y_{t}) $$
- Trade-off in choosing the trend:
	- want the trend component to be a smooth function by its definition
	- want to make the trend component track the actual data to some degree, in order to capture also some fluctuations in the data that are of lower frequency than business cycles.
- These two considerations are balanced by the parameter $\lambda$

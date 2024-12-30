
[Source](https://education.illinois.edu/docs/default-source/carolyn-anderson/edpsy589/lectures/8_Multicategory_logit/ordinal_logistic_post.pdf)

Ordinal: 顺序的，dichotomize: 对分，二分

Common models for ordinal responses:
- **Cumulative logit model**: typically assuming "proportional odds"
- **Adjacent categories logit model**: typically assuming common slopes
- **Continuation ratio logits**
- **Baseline multinomial logistic regression** but use the order to interpret and report odds ratios.

### Proportional Odds Model / Cumulative Logit Model

Form logits (dichotomize categories of Y) incorporating the ordinal information. 
Cumulative Probabilities:
- $Y = 1,2,\dots,J$ and order is relevant.
- $\{\pi_{1}, \pi_{2},\dots,\pi_{J}\}$.
- $\mathbb{P}(Y \leq j) = \pi_{1} + \dots + \pi_{j} = \sum_{k=1}^{j} \pi_{k}$ for $j=1, \dots, J-1$.
- "Cumulative logits": for $j = 1, \dots, J-1$,
$$ \log \left( \frac{\mathbb{P}(Y \leq j)}{\mathbb{P} (Y > j)}  \right) = \log \left( \frac{\mathbb{P}(Y \leq j)}{1 - \mathbb{P} (Y \leq j)}  \right)  = \log \left( \frac{\sum_{k=1}^{j} \pi_{k} }{\sum_{q=j+1}^{J} \pi_{q} }  \right)  $$
The Proportional Odds Model is
$$ \mathrm{logit} (\mathbb{P}(Y \leq j)) = \log \left( \frac{\mathbb{P}(Y \leq j)}{\mathbb{P} (Y > j)}  \right) = \alpha_{j} + \beta x, \quad j=1, 2, \dots, J-1 $$
- $\alpha_{j}$ (intercepts) can differ.
- $\beta$ (slope) is constant.
	- The effect of $x$ is the same for all $J-1$ ways to collapse $Y$ into dichotomous outcomes (cumulatively).
	- A single parameter describes the effect of $x$ on $Y$ (versus $J-1$ slopes in the baseline model).
- Interpretation in terms of odds ratios.

For a given level of $Y$ (say $Y = j$), the odds ratio
$$ \begin{align}
&\ \frac{\mathbb{P}(Y \leq j \ |\ X=x_{2}) / \mathbb{P}(Y > j \ |\ X=x_{2})}{\mathbb{P}(Y \leq j \ |\ X=x_{1}) / \mathbb{P}(Y > j \ |\ X=x_{1})} 
= \frac{\mathbb{P}(Y \leq j \ |\ x_{2}) \mathbb{P}(Y > j \ |\ x_{1})}{\mathbb{P}(Y \leq j \ |\ x_{1}) \mathbb{P}(Y > j \ |\ x_{2})}  \\
= &\ \frac{\exp(\alpha_{j} + \beta x_{2})}{\exp (\alpha_{j} + \beta x_{1})} = \exp(\beta(x_{2} - x_{1}))
\end{align} $$
or log odds ratio $= \beta(x_{2}-x_{1})$.
The log cumulative odds ratio is proportional to the difference (distance) between $x_{1}$ and $x_{2}$.
Since the proportionality coefficient $\beta$ is constant, this model is called the "Proportional Odds Model".

- Note that the cumulative probabilities are given by 
$$ \mathbb{P}(Y \leq j) = \frac{\exp(\alpha_{j} + \beta x)}{1 + \exp(\alpha_{j} + \beta x)} $$
- Since $\beta$ is constant, curves of cumulative probabilities plotted against $x$ are parallel
- $\mathbb{P} (Y= j) = \mathbb{P}(Y\leq j) - \mathbb{P}(Y \leq j-1)$ and $\mathbb{P} (Y= 1) = \mathbb{P}(Y\leq 1)$
- In fitting this model to data, it must be simultaneous.


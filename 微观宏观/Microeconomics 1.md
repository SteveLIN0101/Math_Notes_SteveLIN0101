syllabus

# Consumer Theory: Preference

Consumer theory is important
- consumer demand forecasting
- pricing (ex: hotel pricing, air ticket pricing, pricing of other multi-product companies, such as Apple),
	- price discrimination 价格歧视
- What they can do to improve their demand, e.g., through product designs?
## Consumption Set: X

- **is the set of bundles the consumer can conceive.**
- Usually take $X \subseteq R_{+}^n$, non-negative number.
- Defines the **physical constraint of consumption**.
- It is all combinations of all the goods and services that can be produced with the current technologies. 
- This includes all the combinations of all the products that exist and all those that can be made, but firms choose not to make.
- We do want the analysis tractable, not limited to discrete numbers of products.
- $\textrm{\color{red} Consumers choose a consumption bundle}$ $x \in X$

(Allow for technical convenience)
Usually assume that the consumption set $X$ is
- **Non-empty** (empty set $\emptyset$, different from the set containing only 0, $\{ 0\}$)
- **Closed**. (otherwise we cannot find a optimal solution when we are searching close to the boundary of $X$)
- **Convex**. (Linear combination of two bundle points should be in the set, meaning that a proportion of one bundle and another proportion of the other bundle is allowed.)
$$ x \in X, y \in X \to \alpha x + (1 - \alpha) y \in X, \ \forall \alpha \in (0, 1)  $$
- $0 \subseteq X$. **No consumption is always possible.**

## Preference

- Preference: rank consumption bundles from the consumption set $X$.
>[! Definition (Notation)]
> 1. $x \succeq y$: $x$ is at least as good as $y$
> 2. $x \succ y$: $x$ is strictly better than $y$, i.e., $x \succeq y$ but not $y \succeq x$
> 3. $x \sim y$: $x$ and $y$ indifferent,

Ex: 
- For me a hotpot meal is strictly better than a McDonald's meal, 1 hotpot $\succ$ 1 McDonald's, or 
$$  (0, 1) \succ (1, 0) $$
- I am indifference between a blue pencil and a black pencil, 1 blue pencil $\sim$ 1 black pencil

**Caveat:** $\succeq$ is different from the mathematical notation $\geq$

## Graphic Representation: Indifference Curves

- An $\text{\color{blue} Indifference Curve}$ collects all consumption bundles providing the same given utility. Ex,
$$ x' \sim x'' \sim x''' \implies x', x'', x''' \text{ on the same indifference curve.}   $$
- can use indifference curves to describe consumers' preferences for product designs if the horizontal axis $x_{1}$ and the vertical axis $x_{2}$ are product attributes.

## Axioms of preference

(Axioms of $\succeq$) For all $x, y, z \in X$

> [! Axioms 1] 
 **Completeness**: either $x \succeq y$, $y \succeq x$, or both.
 Any two bundles can be compared.

If you are asked which bundle you prefer, you never say "I don't know", unless what you mean is that you are indifferent between the two.

> [! Axioms 2] 
**Transitivity**: if $x \succeq y$ and $y \succeq z$, then $x \succeq z$.
The preference is not circular.

Does not allow cases like: 
	hotpot $\succeq$ subway, subway $\succeq$ KFC, and meanwhile KFC $\succeq$ hotpot

**Rational Preference**: We say $\succeq$ is rational if it's both complete and transitive.

> [! Axioms 3] 
**Continuity**: For all $y \in X$, the sets $\{ x \in X: x \succeq y \}$ and $\{ x \in X: y \succeq x \}$ are both closed sets.
> Or equivalently, for any sequences $\{x_{n} \succeq y_{n} \}$ with $\lim_{ n \to \infty } x_{n} = x$ and $\lim_{ n \to \infty } y_{n} = y$, we have  $\{x \succeq y \}$
- Intuitively, continuity says that there is no "sudden reversal" of preference.
	- If $z$ is "close enough" to $x$, and $x$ is strictly/weakly better than $y$, then $z$ must be strictly/weakly better than $y$.
- Continuity is a very important property for preference.
- Existence of utility function makes it handy to deal with utility function.


Question: Any example of discontinuous preference?
**Lexicographic preference:**
(Definition): $(x_{1}, x_{2}) \succ (y_{1}, y_{2})$ if and only if either 
1. $x_{1} > y_{1}$, or
2. $x_{1} = y_{1}$ and $x_{2} > y_{2}$.
(Physical Dictionary)

> [! Proof(Non continuous preference).]
> Choose two bundles: $\left( \frac{1}{n} , 0 \right)$ and $(0, 1)$.
> We know for any $n$: $\left( \frac{1}{n} , 0 \right) \succ (0, 1)$
> But the $\lim_{ n \to \infty } \left( \frac{1}{n} , 0\right) = (0, 0) \prec (0, 1)$

## Preference: Monotonicity

> [! Axioms 4] 
> **Monotonicity**: $x \geq y \implies x \succeq y$
> **Strong Monotonicity:** $x \geq y \implies x \succeq y$, and $x \succ y$ if in addition $x\neq y$.

The more, the better.
Example: 
- Monotonicity says: because $(3, 5) \geq (3, 4)$, $(3, 5) \succeq (3, 4)$
- but monotonicity is silent on: $(3,5), (4,4)$

> [! Remarks]
> *In cases when we prefer **small numbers** (bads), we just redefine...*
> Example:
> Original consumption set $(x_{1}, x_{2}) = (\text{working hours}, \text{consumption})$
> Preference: Less working hours is better.
> Redefine: $x_{1}' = 24 -x_{1} = \text{Leisure hours}$.
> Then more leisure hours is better.


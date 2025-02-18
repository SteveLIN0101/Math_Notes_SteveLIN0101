
$$\begin{align}
a &= \frac{r_{1} + r_{2}}{2}  \\
x &= a \cos(t)  \\
y &= a \sin(t) \cdot \sqrt{ 1 - \left( \frac{r_{1} - r_{2}}{r_{1} + r_{2}} \right)^{2} }
\end{align}$$

```python
def hohmann_transfer(t, r1, r2):
    a = (r1 + r2) / 2
    x = a * np.cos(t)
    y = a * np.sin(t) * np.sqrt(1 - ((r1 - r2)/(r1 + r2))**2)
    return x, y
```

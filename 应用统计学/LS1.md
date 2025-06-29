三大分布+正态分布

- 卡方分布：\[\chi^2\sim Ga(n/2, 1/2)\]
- F分布：\[F\sim\]
![ds](distributions.pdf)

多个独立正态分布的线性组合也符合正态分布：
$$
X_i\sim N(\mu_{i},\sigma_{i}^2)
$$
那么线性组合
$$
Z=C_{1}X_{1}+...+C_{n}X_{n}
$$
也服从正态分布，并且
$$
Z \sim N(\sum_{i=1}^{n}C_{i}\mu_{i},(\sum_{i=1}^{n}C_{i}^2\sigma_{i}^2))
$$

注意t分布中，
$$
s_{W}^2=\frac{(m-1)s_{x}^2+(n-1)s_{y}^2}{m+n-2}=\frac{\sum_{i=1}^{n}(x-\bar{x})^2+\sum_{i=1}^{m}(y-\bar{y})^2}{m+n-2}
$$
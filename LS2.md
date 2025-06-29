# 2. 参数估计

## 2.1. 点估计和估计量的评选标准
### 2.1.1. 点估计概念
### 2.1.2. 估计量的评选标准
#### 2.1.2.1. 无偏性
$$
E(\hat \theta)=\theta
$$

>常用无偏估计
$$
s^2=\sigma ^2
$$
$$
\frac{1}{n}\sum_{i=1}{n}x_{i}^k=\mu_{k}
$$
$$
f(x;\theta)=\frac{1}{\theta}\cdot exp(-\frac{x}{\theta})I(x>0)
$$
\(x_{(i)}\)都是\(\theta\)的无偏估计

**无偏估计不具有不变性**：
$s^2$是$\sigma^2$无偏估计但是$s$不是$\sigma$的无偏估计
#### 2.1.2.2. 有效性

$$
Var(\hat \theta_{1})<=Var(\hat \theta_{2})
$$
严格不等号成立那么$\theta_{1}$比$\theta_{2}$有效
#### 2.1.2.3. 相合性

概率收敛
$$
lim_{n\to \infty}P\{|\hat \theta-\theta|<\epsilon\}=1
$$
$\hat{\theta}$是$\theta$相合估计

**定理：**
- 6.2.1 
$$
lim_{n\to \infty}E(\hat \theta_{n})= \theta, lim_{n\to \infty}Var(\hat \theta_{n})=0
$$
- 6.2.2 
  $\hat \theta_{n1}...\hat{\theta}_{nk}$是$\theta_{1}...\theta_{k}$相合估计, $\eta=g(\theta_{1},...,\theta_{k})$是$\theta_{1}...\theta_{k}$的连续函数，那么$\hat \eta_{n}=g(\hat \theta_{n1}...\hat{\theta}_{nk})$    是$\eta$相合估计
## 2.2. 矩估计及其统计性质

- 总体样本均值和方差的矩估计量的表达式不随着总体样本分布-变化而变化
- 一般是相合的

## 2.3. 极大似然估计及其统计性质（MLE）

**法一：**
- 步骤：
  - 写出似然函数
  - 求对数
  - 求偏导(关于参数), 建立方程组
  - 根据二阶导数的非正定或者二阶导的小于 0 得到为极大似然估计
  
**法二：**
- 例外：
  - 均匀分布U(a,b)的极大似然估计是最大次序统计量
$$
\hat a=x_{(1)}, \hat b =x_{(n)}
$$
在这里直接令极大似然函数的示性函数$I$等于1(最大)

**极大似然估计具有不变性**

渐进正态估计——极大似然估计的渐进正态性
>### 定理 6.3.1 整体含义  
>该定理围绕**极大似然估计的渐近正态性**展开，用于说明在满足特定条件时，总体未知参数的极大似然估计量 $\hat{\theta}_n$ 具有渐近正态分布的性质，为大样本下利用极大似然估计做统计推断（如区间估计、假设检验 ）提供理论支撑。  
>
>### 各条件与参数详细解释  
>#### 1. 总体与密度函数设定  
>- **总体**：设总体为 $X$ ，其概率密度函数为 $p(x;\theta)$ ，其中 $\theta$ 是待估计的未知参数，$\theta \in \Theta$ ，且 $\Theta$ 为**非退化区间**（即区间长度大于 0 ，保证参数有实际估计意义 ）。  
>
>#### 2. 导数存在条件  
>- 要求对任意样本观测值 $x$ ，对数密度函数 $\ln p(x;\theta)$ 关于 $\theta$ 的**一阶、二阶、三阶偏导数**  
  $$\frac{\partial \ln p}{\partial \theta},\ \frac{\partial^2 \ln p}{\partial \theta^2},\ \frac{\partial^3 \ln p}{\partial \theta^3}$$  
  对**所有 $\theta \in \Theta$ 都存在**。这是为后续利用泰勒展开等工具分析极大似然估计的渐近性质做铺垫，保证函数光滑可导。  
>
>#### 3. 导数的可积性与有界性条件  
>- 存在函数 $F_1(x), F_2(x), F_3(x)$ ，使得：  
>  - 一阶偏导数的绝对值有界：$\displaystyle \left| \frac{\partial p}{\partial \theta} \right| < F_1(x)$  
>  - 二阶偏导数的绝对值有界：$\displaystyle \left| \frac{\partial^2 p}{\partial \theta^2} \right| < F_2(x)$  
>  - 三阶偏导数的绝对值有界：$\displaystyle \left| \frac{\partial^3 p}{\partial \theta^3} \right| < F_3(x)$  
>  - 且这些 $F_i(x)$ 满足**积分有限**：  
    $$\int_{-\infty}^{+\infty} F_1(x) dx < \infty,\ \int_{-\infty}^{+\infty} F_2(x) dx < \infty$$  
    以及**一致积分有限**（对 $\theta$ 一致）：  
    $$\sup_{\theta \in \Theta} \int_{-\infty}^{+\infty} F_3(x) p(x;\theta) dx < \infty$$  
  这些条件用于控制密度函数及其导数的“增长速度”，保证后续积分、期望等运算的合理性，避免出现无穷大或不可计算的情况。  
>
>#### 4. 费歇尔信息（Fisher Information）条件  
>- 定义 **费歇尔信息函数**（对单个样本）：  
  $$I(\theta) = \int_{-\infty}^{+\infty} \left( \frac{\partial \ln p(x;\theta)}{\partial \theta} \right)^2 p(x;\theta) dx$$  
  要求对所有 $\theta \in \Theta$ ，有 $0 < I(\theta) < \infty$ 。
>
>设 f(x;θ) 是关于参数 θ 的概率密度函数，**费舍尔信息量 I(θ) 定义为对数似然函数的一阶导数平方的期望，即**
>
>$$ I(\theta) = \mathbb{E}\left[\left(\frac{\partial}{\partial\theta} \log f(X;\theta)\right)^2\right] $$  
>  - 费歇尔信息衡量了样本中包含的关于参数 $\theta$ 的“信息量”，$I(\theta) > 0$ 说明参数可被估计（信息非零 ），$I(\theta) < \infty$ 保证信息有限、估计可行。  
>
>#### 5. 极大似然估计的渐近性质  
> 若 $x_1, x_2, \dots, x_n$ 是来自总体 $X$ 的样本，则未知参数 $\theta$ 的**极大似然估计量** $\hat{\theta}_n = \hat{\theta}_n(x_1, x_2, \dots, x_n)$ 满足：  
>  - **相合性**：随着样本量 $n$ 增大，$\hat{\theta}_n$ 依概率收敛到真实参数 $\theta$ （即估计值会越来越接近真实值 ）。  
>  - **渐近正态性**：当 $n$ 很大时，$\hat{\theta}_n$ 近似服从正态分布：  
    $$\hat{\theta}_n \stackrel{AN}{\sim} N\left( \theta,\ \frac{1}{n I(\theta)} \right)$$  
    其中 $AN$ 表示“渐近正态”，正态分布的均值是真实参数 $\theta$ ，方差为 $\frac{1}{n I(\theta)}$ （方差随样本量 $n$ 增大而减小，符合大样本下估计更精确的直觉 ）。  
>
>
>简言之，定理 6.3.1 通过一系列数学条件（导数存在、可积有界、费歇尔信息有限 ），证明了极大似然估计量在大样本下具有良好的渐近性质（相合、渐近正态 ），为实际应用中用极大似然估计做统计分析提供了理论依据。
泊松分布的估计
$$
\hat\lambda_{n} = \frac{1}{n}\sum_{i=1}^{n}x_{i}
$$
## 2.4. 区间估计

**1-\(\alpha\)置信区间**

$$
P(\hat\theta_{L}\leq\theta\leq\hat\theta_{U})=1-\alpha
$$
那么置信区间为
$$
[\hat\theta_{L}, \hat\theta_{U}]
$$
$\theta_{L}$和$\theta_{U}$为置信下限和上限

### 枢轴量法
- G是关于X的函数，G与θ无关
$$
G=G(X;\theta)与\theta无关（不依赖）
$$
- 找到c, d使得
$$
P(c\leq G(X;\theta)\leq d)=1-\alpha
$$
- 转化为
$$
P(\hat\theta_{L}\leq\theta\leq\hat\theta_{U})=1-\alpha
$$

目的是区间尽可能短，或者等尾置信区间 

### 一些常见的枢轴量构造和注意的细节

- 正态分布
  - 对于\(\sigma\)已知的情况，如果有多个样本，例如\(x,y\)，一定注意新的方差是\[\sigma_{new}^2=\frac{\sigma_x^2}{m}+\frac{\sigma_y^2}{n}\]而不是\[\sigma_x^2+\sigma_y^2\]这时候也不需要在枢轴量下面除以样本量的开根，也就是\[U=\frac{\bar x-\bar y-(\mu_1-\mu_2)}{\sigma_{new}}\sim N(0,1)\]
- t分布
- 均匀分布
  - 对于标准均匀分布\(U(0,1)\)而言，有第\(i\)大的次序统计量服从\(Be(i, n-i+1)\)的贝塔分布
  - 构造枢轴量：
    - \(G=\frac{X_{(n)}-X_{(1)}}{\theta_2-\theta_1}\)用于求\(\theta_2- \theta_1\)的置信区间

## Questão 1)

### Item (a)

Temos que o estimador não viesado para $\theta$ é $2X-1$, portanto, para calcular o erro quadrático médio, obtemos:

$$
\begin{aligned}
EQM(\hat{\theta}) & = Var(\hat{\theta}) + Bias^{2}(\hat{\theta})  
\\
\end{aligned}
$$

Porém, pela definição do estimador não-viesado, $Bias^{2}(\hat{\theta}) = 0$:
$$
\begin{aligned}
EQM(\hat{\theta}) 
= Var(\hat{\theta})) = Var(2X-1) \\
 = 2^{2}Var(X) = 4 Var(X) \\

\end{aligned}
$$
e, como para a uniforme discreta, $Var(U(a,b)) = \frac{(b-a+1)^{2}-1}{12}$, temos que $Var(U(1,\theta)) = \frac{\theta^{2}-1}{12}$ e portanto:

$$
\begin{aligned}
EQM(\hat{\theta}) = 4 \frac{(\theta^{2} - 1)}{12}= \frac{\theta^{2}-1}{3} .
\end{aligned}
$$

### Item (b)

Para o estimador de máxima verossimilhança de $\theta$, temos que $\hat{\theta} = X$, o que nos leva ao seguinte EQM: 

$$
\begin{aligned}
EQM(\hat{\theta}) & = Var(\hat{\theta}) + Bias^{2}(\hat{\theta})  
\\
\end{aligned}
$$

Tendo:

$$
\begin{aligned}
Bias(\hat{\theta}) = E[X] - \theta = (\frac{1+\theta}{2}) - \theta = \frac{1+\theta-2\theta}{2} = \frac{1-\theta}{2}
\\
\end{aligned}
$$
$$
\begin{aligned}
Var(\hat{\theta}) = Var(U(1,\theta)) = \frac{\theta^{2}-1}{12}
\\
\end{aligned}
$$

Chegamos a:
$$
\begin{aligned}
EQM(\hat{\theta}) & = \frac{\theta^{2}-1}{12} + \left (\frac{1-\theta}{2}\right )^{2}  
\\ = \frac{\theta^{2}-1}{12} + \frac{\theta^{2}-2\theta+1}{4} 
\\ = \frac{\theta^{2}-1}{12} + \frac{3\theta^{2}-6\theta+3}{12} 
\\ = \frac{2\theta^{2}-3\theta+1}{6}.
\end{aligned}
$$

  

## Questão 3)

### Item (a)

Pelo Teorema de Bayes

$$
\begin{aligned}
\mathbb{P}(\theta = j | X = x) & = \frac{\mathbb{P}(X = x| \theta = j)}{\mathbb{P}(X = x)} \propto \\
& \propto V_x(j)P(\theta=j) \propto \\
& \propto \frac{1}{j} \frac{12}{(j+1)(j+2)(j+3)} \mathbb{I}_{\{x,x+1,\dots \}}(j)
\end{aligned}
$$

Seja 

$$
\begin{aligned}
f(j) & = \frac{12}{j(j+1)(j+2)(j+3)} \implies \\
\mathbb{P}(\theta = j | X = x) & = \frac{f(j)}{\sum_{i=x}^{\infty}f(i)} \mathbb{I}_{\{x,x+1,\dots \}}(j)
\end{aligned}
$$

Note que
$$
\begin{aligned}
& \sum_{i=1}^{\infty} f(i) = \frac{2}{3} \text{ e }
\sum_{i=1}^{x-1} f(i) = \frac{2}{3} - \frac{4}{x(x+1)(x+2)} \implies \\
&\sum_{i=x}^{\infty}f(i) = \sum_{i=1}^{\infty}f(i) - \sum^{x-1}_{i=1}f(i) = \frac{4}{x(x+1)(x+2)}
\end{aligned}
$$

Segue que

$$
\begin{aligned}
\mathbb{P}(\theta = j | X = x) & = \frac{f(j)}{ \frac{4}{x(x+1)(x+2)} }\mathbb{I}_{\{x,x+1,\dots \}}(j) \\
& = \frac{12x(x+1)(x+2)}{4j(j+1)(j+2)(j+3)}\mathbb{I}_{\{x,x+1,\dots \}}(j) \\
& = \frac{3x(x+1)(x+2)}{j(j+1)(j+2)(j+3)}\mathbb{I}_{\{x,x+1,\dots \}}(j)
\end{aligned}
$$

Seja  
$$
g(j) = \frac{1}{(j+1)(j+2)(j+3)}
$$

O estimador de Bayes com relação à perda quadrática é dado por

$$
\begin{aligned}
\mathbb{E}(\theta | X = x) & = \sum_{i=x}^{\infty} j \frac{3x(x+1)(x+2)}{j(j+1)(j+2)(j+3)} \\
& = 3x(x+1)(x+2) \sum_{i=x}^{\infty}\frac{1}{(j+1)(j+2)(j+3)} \\
& = 3x(x+1)(x+2) \sum_{i=x}^{\infty} g(j)
\end{aligned}
$$

Note que 

$$
\begin{aligned}
& \sum_{i=1}^{\infty} g(i) = \frac{1}{12} \text{ e }
\sum_{i=1}^{x-1} g(i) = \frac{1}{12} - \frac{1}{2(x+1)(x+2)} \implies \\
&\sum_{i=x}^{\infty} g(i) = \sum_{i=1}^{\infty}g(i) - \sum_{i=1}^{x-1}g(i) = \frac{1}{2(x+1)(x+2)}
\end{aligned}
$$

Segue que

$$
\begin{aligned}
\mathbb{E}(\theta | X = x) & = \frac{3x(x+1)(x+2)}{2(x+1)(x+2)} \\
& = \frac{3x}{2}
\end{aligned}
$$

Desta forma, obtemos o estimador 

$$
\delta_1(X) = \frac{3X}{2}
$$

### Item (b)

$$
\begin{aligned}
\mathbb{P}(\theta = j | X = x) & \propto V_x(j)P(\theta=j) \\
& \propto \frac{1}{j} \frac{2}{(j+1)(j+2)} \mathbb{I}_{\{x,x+1,\dots \}}(j)
\end{aligned}
$$

Seja

$$
\begin{aligned}
f(j) & = \frac{2}{j(j+1)(j+2)} \implies \\
\mathbb{P}(\theta = j | X = x) & = \frac{f(j)}{\sum^{\infty}_{i=x}f(i)}\mathbb{I}_{\{x,x+1,\dots \}}(j)
\end{aligned}
$$

Note que

$$
\begin{aligned}
&\sum_{i=1}^{\infty} f(i) = \frac{1}{2} \text{ e } \sum_{i=1}^{x-1} f(i) = \frac{1}{2} - \frac{1}{x(x+1)} \implies \\
& \sum_{i=x}^{\infty}f(i) = \sum_{i=1}^{\infty} f(i) - \sum_{i=1}^{x-1}f(i) = \frac{1}{x(x+1)}
\end{aligned}
$$

Segue que

$$
\begin{aligned}
\mathbb{P}(\theta = j | X = x) & = \frac{f(j)}{\frac{1}{x(x+1)}} \mathbb{I}_{\{x,x+1,\dots \}}(j) \\
& = \frac{2x(x+1)}{j(j+1)(j+2)}\mathbb{I}_{\{x,x+1,\dots \}}(j)
\end{aligned}
$$

Seja

$$
g(j) = \frac{1}{(j+1)(j+2)}
$$

O estimador de Bayes com relação à perda quadrática é dado por

$$
\begin{aligned}
\mathbb{E}(\theta | X = x) & = \sum_{i=x}^{\infty} j \frac{2x(x+1)}{j(j+1)(j+2)} \\
& = 2x(x+1) \sum_{i=x}^{\infty}\frac{1}{(j+1)(j+2)} \\
& = 2x(x+1) \sum_{i=x}^{\infty}g(j)
\end{aligned}
$$

Note que 

$$
\begin{aligned}
&\sum_{i=1}^{\infty} g(i) = \frac{1}{2} \text{ e }
\sum_{i=1}^{x-1} g(i) = \frac{1}{2} - \frac{1}{x+1} \implies \\
&\sum_{i=x}^{\infty}g(i) = \sum_{i=1}^{\infty}g(i) - \sum_{i=1}^{x-1}g(i) = \frac{1}{x+1}
\end{aligned}
$$

Segue que

$$
\begin{aligned}
\mathbb{E}(\theta | X = x) & = \frac{2x(x+1)}{x+1} \\
& = 2x
\end{aligned}
$$

Desta forma, obtemos o estimador 

$$
\delta_2(X) = 2X
$$

## Questão 4)

Vamos calcular $EQM(\delta_1(X)|\theta)$ e $EQM(\delta_2(X)|\theta)$ obtidos da questão anterior. Temos que

$$
\begin{aligned}
\mathbb{E}(\delta_1(X)|\theta) & = \mathbb{E}(\frac{3X}{2}|\theta) \\
& = \frac{3}{2}\mathbb{E}(X|\theta) \\
& = \frac{3}{2} \frac{\theta + 1}{2} \\
& = \frac{3(\theta + 1)}{4}
\end{aligned}
$$

$$
\begin{aligned}
Var(\delta_1(X)|\theta) & = Var(\frac{3X}{2}|\theta) \\
& = \frac{9}{4} Var(X|\theta) \\
& = \frac{9}{4} \frac{\theta^2 - 1}{12} \\
& =  \frac{3 (\theta^2 - 1)}{16}
\end{aligned}
$$

$$
\begin{aligned}
\mathbb{E}(\delta_2(X)|\theta) & = \mathbb{E}(X|\theta) \\
& = 2\mathbb{E}(X|\theta) \\
& = 2 \frac{\theta + 1}{2} \\
& = \theta + 1
\end{aligned}
$$

$$
\begin{aligned}
Var(\delta_2(X)|\theta) & = Var(2X|\theta) \\
& = 4Var(X|\theta) \\
& = 4 \frac{\theta^2 - 1}{12} \\
& =  \frac{\theta^2 - 1}{3}
\end{aligned}
$$

De $EQM(\delta(X)|\theta) = [\mathbb{E}(\delta(X)|\theta) - \theta]^2 + Var(\delta(X)|\theta)$ , segue que

$$
\begin{aligned}
EQM(\delta_1(X)|\theta) & = [\frac{3(\theta + 1)}{4} - \theta]^2 + \frac{3 (\theta^2 - 1)}{16} \\
& = \frac{2\theta^2-3\theta+3}{8}
\end{aligned}
$$

$$
\begin{aligned}
EQM(\delta_2(X)|\theta) & = [\theta + 1 - \theta]^2 + \frac{\theta^2 - 1}{3} \\
& = \frac{\theta^2 + 2}{3}
\end{aligned}
$$

## Questão 5)

### Item (a)

De $\theta - 1 \sim Poisson(\lambda_0), \Theta = \{1,2,3,\dots\}$ segue que

$$
\mathbb{P}(\theta = j) = \frac{e^{-\lambda_0}\lambda_0^{j-1}}{(j-1)!}\mathbb{I}_\Theta(j)
$$

Pelo Teorema de Bayes

$$
\begin{aligned}
\mathbb{P}(\theta = j | X = x) & = \frac{\mathbb{P}(X = x| \theta = j)}{\mathbb{P}(X = x)} \propto \\
& \propto V_x(j)P(\theta=j) \propto \\
& \propto \frac{1}{j} \frac{e^{-\lambda_0}\lambda_0^{j-1}}{(j-1)!} \mathbb{I}_{\{x,x+1,\dots \}}(j) \\
& \propto \frac{e^{-\lambda_0}\lambda_0^{j-1}}{j!} \mathbb{I}_{\{x,x+1,\dots \}}(j) \implies \\
\mathbb{P}(\theta = j | X = x) & = \frac{\frac{e^{-\lambda_0}\lambda_0^j}{j!} \mathbb{I}_{\{x,x+1,\dots \}}(j)}{\sum_{i=x}^{\infty} \frac{e^{-\lambda_0}\lambda_0^j}{i!}} \\
& = \frac{\frac{e^{-\lambda_0}\lambda_0^j}{j!} \mathbb{I}_{\{x,x+1,\dots \}}(j)}{1 - S(x, \lambda_0)}
\end{aligned}
$$

Em que $S(x, \lambda_0) = \sum_{i=0}^{x-1} \frac{e^{-\lambda_0}\lambda_0^i}{i!}$ . Isto é, $\theta | X = x \sim Poisson(\lambda_0)$ "truncada" em $x$. O estimador de Bayes com relação à perda 0-1 é uma moda de $\mathbb{P}(\theta = j | X = x)$. As modas de uma distribuição $Poisson(\lambda)$ comum são $\lceil{\lambda} \rceil - 1$ e $\lfloor \lambda \rfloor$. Portanto,  $x +\lceil{\lambda_0} \rceil - 1$ e $x + \lfloor \lambda_0 \rfloor$ são modas para $\theta | X = x \sim Poisson(\lambda_0)$ "truncada" em $x$. Desta forma, obtemos os estimadores $\delta_1(X) = X +\lceil{\lambda_0} \rceil - 1$ e $\delta_2(X) = X + \lfloor \lambda_0 \rfloor$.

### Item (b)

De $\theta - 1 \sim Binomial(N-1, \frac{1}{2}), N > 1$ segue que

$$
\mathbb{P}(\theta = j) = {N-1 \choose j-1}(0.5)^{N-1} \mathbb{I}_{\{1,\dots, N \}}(j)
$$

Pelo Teorema de Bayes

$$
\begin{aligned}
\mathbb{P}(\theta = j | X = x) & = \frac{\mathbb{P}(X = x| \theta = j)}{\mathbb{P}(X = x)} \propto \\
& \propto V_x(j)P(\theta=j) \propto \\
& \propto \frac{1}{j} {N-1 \choose j-1}(0.5)^{N-1} \mathbb{I}_{\{x,\dots, N \}}(j) \propto \\
& \propto {N \choose j} \mathbb{I}_{\{x,\dots, N \}}(j) \implies \\
\mathbb{P}(\theta = j | X = x) & = \frac{{N \choose j}}{\sum_{i=x}^N{N \choose i}} \mathbb{I}_{\{x,\dots, N \}}(j) 
\end{aligned}
$$
Note que ${N \choose k}$ é máximo quando  $k = \lfloor \frac{N}{2} \rfloor$ ou $k = \lceil \frac{N}{2} \rceil$. Desta forma, obtemos o estimador 
$$
\delta (X) = \begin{cases}
\lfloor \frac{N}{2} \rfloor \text{ ou } \lceil \frac{N}{2} \rceil & \text{se } X \leq \lfloor \frac{N}{2} \rfloor \\
\lceil \frac{N}{2} \rceil & \text{se } \lfloor \frac{N}{2} \rfloor < X \leq \lfloor \frac{N}{2} \rfloor \\
X & \text{em caso contrário}
\end{cases}
$$
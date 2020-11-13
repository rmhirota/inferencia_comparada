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
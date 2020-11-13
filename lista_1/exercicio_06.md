---
title: "Ex. 06"
output:
  pdf_document: default
  html_document:
    df_print: paged
---

Sejam $X_1$, $X_2$, $X_3$ variáveis aleatórias cuja distribuição conjunta é dada por:

$$
P(X_1 = 1, X_2 = 1, X_3 = 0) = P(X_1 = 1, X_2 = 0, X_3 = 1) = P(X_1 = 0, X_2 = 1, X_3 = 1) = \frac{1}{3}
$$

\

__(a) Mostre que $X_1$, $X_2$, $X_3$ são permutáveis.__

Para toda permutação dos índices 1, 2, 3, ou seja, $\pi : \{1, 2, 3\} \rightarrow \{1, 2, 3\}$ e para todo valor $x_1$, $x_2$, $x_3$, 
$$
P(X_{\pi(1)} = x_1, X_{\pi(2)} = x_2, X_{\pi(3)} = x_3) = P(X_1 = x_1, X_2 = x_2, X_3 = x_3)
$$

Permutando $X$, temos

$$P(X_1 = 1, X_2 = 1, X_3 = 0) = \frac{1}{3}$$
$$P(X_1 = 1, X_2 = 0, X_3 = 1) = \frac{1}{3}$$
$$P(X_1 = 0, X_2 = 1, X_3 = 1) = \frac{1}{3}$$

Além disso, como a soma das probabilidades é 1, isso implica que

$$P(X_1 = 1, X_2 = 0, X_3 = 0) = P(X_1 = 0, X_2 = 0, X_3 = 1) = P(X_1 = 0, X_2 = 1, X_3 = 0) =$$
$$= P(X_1 = 1, X_2 = 1, X_3 = 1) = P(X_1 = 0, X_2 = 0, X_3 = 0) = 0$$

Logo, pela definição de permutabilidade, $X_1$, $X_2$, $X_3$ são permutáveis.
  
\
   
__(b) Prove que se $X_4 \in \{0, 1\}$ é uma outra variável aleatória, então $X_1$, $X_2$, $X_3$, $X_4$ não são permutáveis.__

Para $X_4 = 1$ com probabilidade $p$, e $X_4 = 0$ com probabilidade $1-p$ temos a distribuição conjunta

$$P(X_1 = 1, X_2 = 1, X_3 = 0, X_4 = 1) = P(X_4 = 1 | X_1 = 1, X_2 = 1, X_3 = 0 ) P(X_1 = 1, X_2 = 1, X_3 = 0 ) =$$
$$ = P(X_4 = 1 | X_1 = 1, X_2 = 1, X_3 = 0 ) \frac{1}{3}$$

Permutando os valores, 

$$P(X_1 = 1, X_2 = 1, X_3 = 1, X_4 = 0) = P(X_4 = 0 | X_1 = 1, X_2 = 1, X_3 = 1 ) P(X_1 = 1, X_2 = 1, X_3 = 1 ) =$$
$$ = P( X_4 = 0 | X_1 = 1, X_2 = 1, X_3 = 1) 0 = 0 $$

Ou seja, essas duas probabilidades só serão iguais se $P(X_4 = 1 | X_1 = 1, X_2 = 1, X_3 = 0) = 0$

Por outro lado, tomando $X_4 = 0$ e a distribuição conjunta

$$P(X_1 = 1, X_2 = 1, X_3 = 0, X_4 = 0) = P(X_4 = 0 | X_1 = 1, X_2 = 1, X_3 = 0 ) P(X_1 = 1, X_2 = 1, X_3 = 0 ) = $$
$$P(X_4 = 0 | X_1 = 1, X_2 = 1, X_3 = 0 ) \frac{1}{3}$$

E, permutando,

$$P(X_1 = 1, X_2 = 0, X_3 = 0, X_4 = 1) = P(X_4 = 1 | X_1 = 1, X_2 = 0, X_3 = 0 ) P(X_1 = 1, X_2 = 0, X_3 = 0 ) = $$
$$P(X_4 = 1 | X_1 = 1, X_2 = 0, X_3 = 0 ) 0 = 0$$

Da mesma forma, essas duas probabilidades só serão equivalentes se $P(X_4 = 1 | X_1 = 1, X_2 = 0, X_3 = 0 ) = 0$. 

No entanto, é impossível que $P(X_4 = 1 | X_1 = 1, X_2 = 0, X_3 = 0 ) = 0$ e $P(X_4 = 0 | X_1 = 1, X_2 = 1, X_3 = 0) = 0$ ao mesmo tempo.

Logo, por contradição, $X_1, X_2, X_3, X_4$ não são permutáveis.



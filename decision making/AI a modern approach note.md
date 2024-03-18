## Chpt 19. Learning From Example
### Supervised learning
1. **Traning set**: N example input-output pairs
    $$(x_1,y_1),\dots,(x_N,y_N)$$
2. **Task of supervised learning**: find a function h that approximates the true function $f:x\rightarrow y$. h is called a hypothesis.
3. **Hypothesis space**:
    - h is a function from *function class*
    - h is a model of data from *model class*
4. **Consistent hypothesis**: we hope to find a *best-fit function* for which each $h(x_i)$ is close to $y_i$.
5. **Test set**: test set is a second sample of $(x_i,y_i)$ pairs and used to evaluate the hypothesis.
6. **Bias**: bias means the tendency of a predictive hypothesis to deviate from the expected value when averaged over different training sets. Bias is usually caused by the restrictions imposed by the hypothesis space. A hypothesis is *underfitting* when it fails to find a pattern in the data.
7. **variance**: variance means the amount of change in the hypothesis due to fluctuation in different training data. A hypothesis is *overfitting* the data when it pays too much attention to the particular data set, causing it to perform poorly on unseen data.
8. **Bias-variance tradeoff**: "choosing the simplest hypothesis that matches the data". *Ockham's razor*: used to "shave off" dubious explanations. One way to find the sweat point is giving probability to each hypothesis.

### Learning Decision Trees
1. **decision tree**: a function that maps a vector of input values(attributes) to a single output value (decision).
    - *Boolean decision tree*: inputs are discrete values and output are either true or false.
2. **Learn decision tree**: the hypothesis is the decision tree. The Learn-Decision-Tree algorithm will learn the decisino tree from data.
    - The core of the Learn-Decision-Tree algorithm is to give a score('importance') for each attribute. The decision tree will start from the highest 'importance' attribute to the lowest.
3. **Learning curve**: Increase the training set size from 1 to 100 and plot the correctness rate.
4. **Information Entropy**: if there is no uncertainty, then the entropy is zero.
    $$H(V)=-\sum_k P(v_k)\log_2 P(v_k)$$
    where $V$ is the variable, $v_k$ is the possible value of this variable, and $P(v_k)$ is the probability of this value.
5. **Entropy of a Boolean variable**: if $V$ is a boolean variable and $q$ is the probability of it being true, then
    $$B(q)=-(q\log_2q+(1-q)\log_2(1-q))$$
6. **Use Information Entropy to give importance**:
    1. find the information entropy provided by attribute A:
        1. A has $d$ different values
        2. Divide the training set by $d$ values: $E_1,\dots, E_d$
        3. For each subset, calculate the entropy: $B(\frac{p_k}{p_k+n_k})$
        4. Sum up all entropy: $\sum^d_{k=1}\frac{p_k+n_k}{p+n}B(\frac{p_k}{p_k+n_k})$
    2. find the importance of attribute A:
        1. Calculate the overall entropy: $B(\frac{p}{p+n})$
        2. The gain of this attribute is given as $B(\frac{p}{p+n}) - \sum^d_{k=1}\frac{p_k+n_k}{p+n}B(\frac{p_k}{p_k+n_k})$
7. **Pruning**: If an attribute is irrelevant, then all its subset's entropies are roughly the same as the whole set. The process of elimating irrelevant attributes is called pruning.
    - *$X^2$ pruning*: We can measure the deviation of attribute A by
        $$\Delta(A)=\sum^d_{k=1}[\frac{(p_k-\bar{p_k})^2}{\bar{p_k}}+\frac{(n_k-\bar{n_k})^2}{\bar{n_k}}]$$
        where $\bar{p_k}$ and $\bar{n_k}$ are the expected number of positive and negative examples in the subset assuming true irrelevant.
    - The smaller $\Delta(A)$ is, the more irrelevant A is.
8. Others:
    - *Continuous-valued input attribute*: find a split point to discrete the input
    - *Continuous-valued output attribute*: use regression tree instead of decision tree.

### Model Selection and Optimization
1. **Model Selection**: the task to find a good hypothesis space.
2. **Optimization**: the task to find the best hypothesis within that space.
3. **data sets**:
    - *training set*: to train candidate models
    - *validation set*: to evaluate the candidate models and choose the best one
    - *test set*: to evalue the best model
4. **hyperparameter**: A model in the model class represents a hypothesis space. The hyperparameters are parameters of the model class.
    - Model class: polynomial, $\{x^a\}$
    - A model in model class: 2-degree polynomial, $\{x^2\}$
    - Hyperparameter: degree value
5. **Loss function**:
    $$L(x,y,\hat{y})=U(x,y)-U(x,\hat{y})$$
    where $\hat{y}=h(x)$ is the predicted result and $y=f(x)$ is the correct result. $U(x,y)$ is the utility of getting result $y$ given an input $x$.
    - If the loss function is independent of $x$, then it can be written as $L(y,\hat{y})$
    - Commonly used loss function:
        - $L_1(y,\hat{y})=|y-\hat{y}|$
        - $L_2(y,\hat{y})=||y-\hat{y}||^2$
        - $L_{0/1}(y,\hat{y})=\begin{cases}0, && y=\hat{y}\\ 1, && y\neq\hat{y}\end{cases}$
6. **Generalization loss**: Define a prior probability distribution $P(X,Y)$ over examples. Then the generalization loss is given by
    $$GenLoss_L(h)=\sum_{(x,y)}L(y,h(x))P(x,y)$$
7. **Empirical loss**: If the prior distribution is unknown. Then the empirical loss is used to find the best hypothesis:
    $$EmpLoss_{L,E}=\sum_{(x,y)}L(y,h(x))\frac{1}{N}$$
    where $N$ is the size of example set $E$
8. **Regularization**: the process of penalizing complex hypotheses is called regularization. The choice of regularization function depends on the hypothesis space. Therefore, the total cost is the combination of empirical loss and complexity of the hypothesis (measured by regularization function).
9. **Hyperparameter tuning**: Tuning hyperparameter is important for the model selection.
    - *hand-tuning*
    - *grid search*: for multiple hyperparameters
    - *random search*: if the combinations of possible hyperparameter values are too many
    - *Bayesian optimization*: treat the task of tuning hyperparameters as a mahcine learning problem in itself. The input is the hyperparameter vector and the output is the total loss on the validation set.
    - *polulation-based training (PBT)*

### The Theory of Learning
1. **Probably approximately correct (PAC)**:
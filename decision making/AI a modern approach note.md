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
1. **Probably approximately correct (PAC)**: a hypothesis is probably approximatedly correct if it is consistent with a sufficiently large set of training examples (always correct among a sufficiently large training set).
    - $error(h)=GenLoss_{L_{0/1}}(h)=\sum_{(x,y)}L_{0/1}(y,h(x))P(x,y)$
    - a hypothesis $h$ is approximately correct if $error(h)\leq\epsilon$.
    - $\cal{H}_{bad}:=\{h|error(h)>\epsilon\}$
    - The number of examples needed for PAC-learning a $k$-DL(n) function is $N\leq\frac{1}{\epsilon}(\ln\frac{1}{\delta}+O(n^k\log_2(n^k)))$
        - n is the number of attributes, and k is the number of decision list.

### Linear Regression and Classification
1. **Univariate linear regression** (a straight line)
    - $y=w_1x+w_0$
    - Input $x$, output $y$, $w_1, w_2$ are coefficients to be learned.
    - hypothesis: $h_w(x) = w_1x+w_0$
    - $Loss(h_w)=\sum_{j=1}^N L_2(y_j,h_w(x_j))=\sum_{j=1}^N (y_j-(w_1x_j+w_0))^2$
    - To find the minimal loss, we can set its partial derivatives with respect to $w_0,w_1$ are zero.
2. **Gradient descent**: gradient descent is the method to find the minimal loss without solving zeroes of the partial derivatives.
    - update: $w_0\leftarrow w_0+\alpha\sum_j(y_j-h_w(x_j))$, $w_1\leftarrow w_1+\alpha\sum_j(y_j-h_w(x_j))x_j$
    - *batch gradient descent*: update for the entire dataset
    - *stochastic gradient descent*: randomly selects a small number of training examples at each step.
    - *epoch*: a step that covers all the training examples.
3. **Multivariable linear regression**: For example, $y=w_0+\sum_{j=1}^nw_ix_{j,i}$
    - hypothesis: $h_w(x_j)=w_0+\sum_{j=1}^nw_ix_{j,i}$
    - define $x_{j,0}=1$, then $h_w(x_j)=w^\intercal x_j$
    - The best vector of weights minimizes squared loss: $Loss(h_w)=\sum_{j=1}^N L_2(y_j,w^\intercal x_j)$
    - write in matrix: $X:=\left[\begin{matrix}x_{1,1} && \cdots  && x_{1,n} \\ \cdots && && \cdots \\ x_{N,1} && \cdots  && x_{N,n} \end{matrix}\right]$, where $n$ is the dimension of weight and $N$ is the number of example.
    - $Loss(h_w)=||Xw-y||^2$
    - use gradient descent to reach the minimum: $w_i\leftarrow w_i+\alpha\sum_j(y_j-h_w(x_j))\times x_{j,i}$
    - or, set the gradient to zero and find the minimum-loss weight:
        $$\nabla_wL(w)=2X^\intercal (Xw-y)=0\implies w^*=(X^\intercal X)^{-1}X^\intercal y$$
        where $(X^\intercal X)^{-1}X^\intercal$ is the pseudoinverse of data matrix.
4. **Avoid overfitting in multivariable linear regression**: it is possible that some dimension is irrelevant and thus causes overfitting.
    - use *regularization*: $Cost(h)=Loss(h)+\lambda Complexity(h)$
    - $Complexity(h_w)=L_q(w)=\sum_i|w_i|^q$
    - decision of $q$:
        - *L1 regularization*: easier to find irrelevant dimension (produce a **sparse model**, because many weights are set to zero); more suitable for the model that axes have different meanings (not interchangeable).
        - *L2 regularization*: has the same result after rotate axes for $X$ data; more suitable for the model that the choice of axes is arbitrary.
5. **Logistic regression**: the boundary of linear classification gives a completely confident prediction of 1 or 0 near boundary. We can replace the hypothesis function to make it smooth near bondary:
    $$h_w(x)=Logistic(w\cdot x)=\frac{1}{1+e^{-w\cdot x}}$$

### Nonparametric Models
1. **parametric models vs nonparametric models**: if we restrict the hypothesis to be a type of functions that are decided by a fixed-size set of parameters, then the hypothesis is called a parametric model. The idea of a nonparametric model is to let the data speak for themself, but it could not generalized well.
2. **Nearest-neighbor models**: if $x_q$ is not in the data table, then find $k$ examples that are nearest to $x_q$, noted as $NN(k,x_q)$.
    - for classification: $k$ is usually an odd number. The predict output are the most common output in $NN(k,x_q)$.
    - for regression: The predict output are the mean or median of the $k$ neighbors or the result of the linear regression problem on neighbors. note that, the higher $k$, the possibility of underfitting is higher.
    - The distance metric is the essential part of the Nearest-neighbor model:
        - **Minkowski distance or $L^p$ norm**: $L^p(x_t,x_s)=(\sum_i|x_{t,i}-x_{s,i}|^p)^{\frac{1}{p}}$
            - $p=1$: Manhattan distance. used if the dimensions are dissimilar, such as age, weight, and gender.
            - $p=2$: Euclidean distance. used if the dimensions are similar, such as width, height and depth.
        - **Mahalanobis distance**: normalize each dimension by mean and standard deviation (replace $x_{j,i}$ by $\frac{x_{j,i}-\mu_i}{\sigma_i}$).
    - This method works well in low-dimensional spaces. Because the concept of neighbor is not clear in high-dimensional spaces.
3. **Support vector machine (SVM)**
    - basic idea: maximize the margin between two data classes.
    - *support vectors*: The hpyothesis is subset of training examples, called *support vectors* or *maximum margin separator*, given by $\{x:w\cdot x + b =0\}$.
    - The maximum margin separator can be found by solving a quadratic programming optimization problem.
    - If the data are not linearly separable, we can map the input vector to a new vector:$z_1=x_1^2,z_2=x_2^2,z_3=\sqrt{2}x_1x_2$. This phenomenon: *if data are mapped into a space of sufficiently high dimension, then they will almost always be linearly separable.*
    - *kernel function*: The expression $(x_j\cdot x_k)^2=:K(x_j,x_k)$ is called a kernel function. The kernel function can be chosen based on what type of higher-dimensional feature space we want.
        - For example, **polynomial kernel**: $K(x_j,x_k)=(1+x_j\cdot x_k)^d$
        - **Gaussian kernel**: $K(x_j,x_k)=e^{-\gamma|x_j - x_k|^2}$

### Ensemble Learning
1. **Ensemble model**: instead of choosing a type of hyothesis to make predictions, the idea of ensumble learning is to select a collection of hypotheses and combine their predictive outputs by averaging, voting, or by another level of machine learning.
2. **Bagging**: generate $K$ different trainint sets and get $K$ hypotheses. For classification problems, the ouput is given by the majority vote. For regression problems, the final output is the average: $h(x)=\frac{1}{K}\sum^K_{i=1}h_i(x)$.
3. **Stacking**: Whereas bagging combines multiple base models of the same model class trained on different data, the technique of stacked generalization (or stacking for short) combines multiple base models from different model classes trained on the same data.
    - there are weighted upon each models and they can be learned (or say, train the ensemble model by learning the weights).
4. **Boosting**: this method will train $K$ hypotheses based on a weighted training set. The weighted training set is updated after one hypothesis is trained and the weights on wrong examples are increased. After $K$ hypotheses generated, the final ensemble will sum up all prediction output with a weigtht: $h(x)=\sum^K_{i=1}z_ih_i(x)$
5. note: Ockham's razor tells us not to make hypotheses more complex than necessary, but the graph tells us that the predictions improve as the ensemble hypothesis gets more complex!
6. **Gradient boosting**: instead of updating the weight of training examples, the gradient boosting update the parameters of the next hypothesis in the direction of reducing the loss.
7. **Online learning**: if the data are independent and identically distributed (i.i.d), we can generate a hypothesis one after another like what the boosting does. However, if the data are not i.i.d, we can only update $K$ hypotheses at the same time. One of the online learning method is called the **randomized weighted majority algorithm**:
    - for each problem to be solved do
        1. Receive the predictions $\{\hat{y}_1, \dots , \hat{y}_K\}$ from the experts.
        2. Randomly choose an expert $k^∗$ in proportion to its weight: $P(k) = w_k$ .
        3. yield $\hat{y}_{k^∗}$ as the answer to this problem.
        4. Receive the correct answer $y$.
        5. For each expert $k$ such that $\hat{y}_k \neq y$, update $w_k \leftarrow \beta w_k$
        6. Normalize the weights so that $\sum_k w_k = 1$.

### Developing Machine Learning System
1. Data collection, assessment, and management
    1. make sure the data capture enough features to learn a model. If not, consider collecting more data.
    2. Draw a learning curve to see if more data will help, or if learning has already plateaued.
    3. **data augmentation**: when data are limited, make more data based on existing data. For example, rotate, translate, crop, or scale each image to create more image data.
    4. Be careful of **unbalanced classes**. If one type of data is too many, one can *undersample* the majority class, or *oversample* the minority class. (Boosting could help)
    5. Be carefule of **outliers**. An outlier is a data point that is far from other points. To reduce the effect of outliers, for instance, we can transforming the data using logarithm.
    6. **feature engineering**: modify the data to make their features more obvious to the hypothesis model.
    7. **exploratory data analysis (EDA)**: use technique to visualize the data, such as *t-distributed stochastic neighbor embedding (t-SNE)*.
2. Model selection and training
3. Trust, interpretability, and explainability
4. Operation, monitoring, and maintenance

## Chpt 20. Learning Probabilistic Models
### Statistical Learning
0. Concepts:
    - data: data are evidence - instantiations of some random variables describing the domiain.
    - hypotheses: probabilistic theories (or distribution) to describe the random variables.
1. **Bayesian learning**: calculates the probability of each hypothesis, given the data, and makes predictions on that basis. $$P(h_i|d)=\alpha P(d|h_i)P(h_i)$$
    - $P(h_i)$: *hypothesis prior*. Usually the hypothesis prior is given or in assumption.
    - $P(d|h_i)$: *likelihood*: can be obtained by calculation. The likelihood of the data under a hypothesis.
    - To make a prediction about an unknown quantity $X$: $$P(X|d)=\sum_i P(X|h_i)P(h_i|d)$$ or $$P(X|d)=P(X|h_{MAP})$$ where $h_{MAP}$ is the hypothesis that maximizes the $P(h_i|d)$. As more data arrive, the MAP and Bayesian predictions become closer.
    - Similiar to the fact that when the hypothesis space is too expressive, overfitting occurs, we hope to penalize complex hypotheses.
    - When the data set is large, the prior distribution over hypotheses is less important — the evidence from the data is strong enough to swamp the prior distribution over hypotheses.
### Learning with Complete Data
1. **complete data**: Data are complete when each data point contains values for every variable in the probability model being learned.
2. **Maximum-likelihood parameter learning (discrete model)**:
    - If the discrete parameter is $\theta$, then the hypothesis is $h_{\theta}$.
    - the likelihood of data set is $P(d|h_{\theta})=\prod_{j=1}^NP(d_j|h_{\theta})$
    - *log likelihood*: $L(d|h_{\theta})=\log P(d|h_{\theta})=\sum_{j=1}^NP(d_j|h_{\theta})$
    - Solve the optimization problem. (using log will be easier)
3. **Naive Bayes Model**: the most common Bayesian network model in machine learning.
    - **Naive Assumption**:  all features (or predictors) in the dataset are independent of each other, given the class label. This simplifies the computation significantly, because it means that the likelihood of observing a conjunction of features given a class label is the product of the likelihoods of observing each feature individually: $$P(x_1,x_2,\dots,x_n|y)=\prod_{i=1}^nP(x_i|y)$$
    - $\{x_i\}$ is the attributes of hypothesis.
    - Therefore, the class variable $C$ has likelihood: $P(C|x_1,\cdots,x_n)=\alpha P(C)\prod_iP(x_i|C)$
4. Two types of machine learning models for classifiers:
    - **Generative model**: models the probability distribution of each class.
    - **Discriminative model**: directly learns the decision boundary between classes.
5. **Maximum-likelihood parameter learning (continuous model)**:
    - If the continuous probability models is *linear-Gaussian*. And we assume that the data are generated as follows: $$P(x)=\frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$
    - log likelihood: $$L=N(-\log\sqrt{2\pi})-\sum_{j=1}^N\frac{(x-\mu)^2}{2\sigma^2}$$
    - Solve the optimization problem and find $\mu, \sigma$.
    - If the linear-Gaussian model with one continuous parent $X$ and a continuous child $Y$, the likelihood is: $$P(y|x)=\frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{(y - (\theta_1x+\theta_2))^2}{2\sigma^2}}$$
    - The parameters are $\theta_1, \theta_2, \sigma$.
6. **Bayesian paramter learning**
    - *Compared to maximum-likelihood parameter learning*: Unlike the maximum-likelihood parameter learning seeks the parameters that maximize the likelihood function, which measures how likely it is to observe the given data under different parameter values. The MLE method focuses solely on the observed data and does not incorporate prior beliefs or information about the parameters. Bayesian estimation involves updating prior beliefs about parameters based on the observed data, using Bayes' Theorem. This method incorporates both the likelihood of the observed data and the prior distribution of the parameters.
        - Prior Knowledge: MLE does not use prior knowledge; Bayesian methods start with prior beliefs and update these beliefs based on data.
        - Outcome: MLE gives a single point estimate of parameters; Bayesian gives a probability distribution reflecting uncertainty.
        - Computational Complexity: MLE is generally simpler and faster; Bayesian methods can be computationally demanding, especially with non-conjugate priors.
    - **beta distributions**: a popular prior distribution, $Beta(\theta;a,b)=\alpha\theta^{a-1}(1-\theta)^{b-1}$. a and b are hyperparameters.
    - After receiving each data point, the hyperparameters update. 
7. **Bayesian linear regression**: Bayesian linear regression is an approach to linear regression in which all the principles of Bayesian statistics are applied. It provides a probabilistic perspective on linear regression models, considering the coefficients and other model parameters as random variables rather than fixed values as in traditional (frequentist) linear regression. This approach allows for the incorporation of prior beliefs about the parameters and offers a comprehensive understanding of uncertainty in model predictions.
8. **nonparametric models**: similar to general case, we can use methods like **k-nearest-neighbors** models or kernel functions to estimate the density of data.

### Learning with Hidden Variables
1. **hidden variables/ latent variables**: not observable in the data. Given the same data set, learning the latent variables can dramatically reduce the number of parameters required to specify a Bayesian network compared to not learning the latent variables. The **expectation-maximization (EM)** algorithm can solve this.
2. **Unsupervised clustering**: the first example of EM.
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
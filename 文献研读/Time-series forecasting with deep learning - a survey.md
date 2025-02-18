Bryan Lim and Stefan Zohren
Published: 15 February 2021
Doi: [https://doi.org/10.1098/rsta.2020.0209](https://doi.org/10.1098/rsta.2020.0209)

### DL architectures for time-series forecasting

1. TS forecasting models  predict the future values of a target $y_{i, t}$ for a given entity $i$ at time $t$. 
2. One-step-ahead forecasting models take the form
$$ \hat{y}_{i, t+1} = f(y_{i, t-k: t} \ ,\ \mathbf{x}_{i, t-k: t} \ , \ \mathbf{s_{i}} ) \tag{2.1} $$
	where
	- $\hat{y}_{i, t+1}$ is the model forecast,
	- $y_{i, t-k: t} = \{y_{i, t-k} \ , \dots,\ y_{i, t} \}$ and $\mathbf{x}_{i, t-k: t} = \{\mathbf{x}_{i, t-k} \ , \dots,\ \mathbf{x}_{i, t} \}$ are the observations of the target and exogenous inputs respectively over a look-back window $k$, 
	- $\mathbf{s}_{i}$ is static metadata associated with the entity (e.g. sensor location), and
	- $f(\cdot)$ is the prediction function learnt by the model.
3. Note that the components of univariate models (i.e. 1-D targets) can be extended to multivariate models without loss of generality. So for notional simplicity, omit the entity index $i$ unless explicitly required.

#### Basic building blocks

1. Deep neural networks learn predictive relationships by using a series of nonlinear layers to construct intermediate feature representations.
2. In time series settings, this can be viewed as encoding relevant historical information into a latent variable $z_{t}$, with the final forecast produced using $z_{t}$ alone
$$ f(y_{t-k: t}, \mathbf{x}_{t-k: t}, \mathbf{s}) = g_{\mathrm{dec}} (z_{t}) \tag{2.2} $$
$$ z_{t} = g_{\mathrm{enc}} (y_{t-k: t}, \mathbf{x}_{t-k: t}, \mathbf{s}) \tag{2.3} $$
	where 
	- $g_{\mathrm{enc}}(\cdot)$, $g_{\mathrm{dec}}(\cdot)$ are encoder and decoder functions respectively.
3. Examine the modern design choices for encoders, and their relationship to traditional temporal models;
4. Explore common network outputs and loss functions used in time-series forecasting applications.

##### Convolutional neural networks

- Convolutional Neural Networks (CNNs) are traditionally designed for image datasets, and extract local relationships that are invariant across spatial dimensions.
- To adapt CNNs to time-series datasets, researchers use multiple layers of **causal convolutions** -- i.e. convolutional filters designed to ensure only past information is used for forecasting.
- For an intermediate feature at hidden layer $l$, each casual convolutional filter takes the form below:
$$ \mathbf{h}_{t}^{l+1} = A\left( (\mathbf{W} * \mathbf{h}) (l, t)\right) \tag{2.4} $$
- and 
$$ (\mathbf{W} * \mathbf{h}) (l, t) = \sum_{\tau = 0}^{k} \mathbf{W}(l, \tau) \mathbf{h}_{t-\tau}^{l} \tag{2.5} $$
- where 
	- $\mathbf{h}_{t}^{l} \in \mathbb{R}^{\mathcal{H}_{\mathrm{in}}}$ is an intermediate state at layer $l$ at time $t$, 
	- $*$ is the convolution operator, 
	- $\mathbf{W}(l, \tau) \in \mathbb{R}^{\mathcal{H}_{\mathrm{out}}\times \mathcal{H}_{\mathrm{in}}}$ is a fixed filter weight at layer $l$, and
	- $A(\cdot)$ is an activation function, such as a sigmoid function, representing any architecture-specific nonlinear processing. 
- For CNNs that use a total of $L$ convolutional layers, we note that the encoder output is then $\mathbf{z}_{t} = \mathbf{h}_{t}^L$

1. Considering the 1-D case, we can see that equation (2.5) bears a strong resemblance to finite impulse response (FIR) filters in digital signal processing. The leads to two keys implications for temporal (时间的) relationships learnt by CNNs:
	1. In line with the **spatial invariance assumptions** for standard CNNs, temporal CNNs assume that relationships are **time-invariant** -- using **the same set of filter weights at each time step and across all time**. 
	2. CNNs are only able to use inputs **within their defined lookback window**, or **receptive field**, to make forecasts. As such, **the receptive field size** $k$ needs to be tuned carefully to ensure that the model can make use of **all relevant historical information**.
	3. It is worth noting that **a single causal CNN layer is equivalent to an AR model**.


2. *Dilated (扩大的) Convolutions*. 
	1. Using the standard convolutional layers can be computationally challenging where long-term dependencies are significant, as the number of parameters scales directly with the size of the receptive field.  
	2. To alleviate this, the modern architectures frequently make use of dilated convolutional layers, which extend equation (2.5) as below
	$$ (\mathbf{W} * \mathbf{h}) (l, t, d_{l}) = \sum_{\tau=0}^{\lfloor k / d_{l} \rfloor } \mathbf{W}(l, \tau) \mathbf{h}_{t-d_{l}\tau}^{l} $$
		where 
		- $\lfloor \cdot \rfloor$ is the floor operator and
		- $d_{l}$ is a layer-specific dilation rate.
	3. Dilated convolutions can hence be interpreted as convolutions of a down-sampled version of the lower layer features -- reducing resolution to incorporate information from the distant past.
	4. As such, by increasing the dilation rate with each layer, dilated convolutions can gradually aggregate information at different time blocks, allowing for more history to be used in an efficient manner.
	5. With the WaveNet architecture for instance, dilation rates are increased in powers of $2$ with adjacent time blocks aggregated in each layer -- allowing for $2^l$ time steps to be used at layer $l$ as shown in figure 1a.

##### Recurrent neural networks

1. Recurrent neural networks (RNNs) have historically been used in sequence modelling, with strong results on a variety of natural language processing tasks. Given the natural interpretation of time-series data as sequences of inputs and targets, many RNN-based architectures have been developed for temporal forecasting applications.
2. At their core, RNN cells contain an internal memory state which acts as a compact summary of past information. The memory state is recursively updated with new observations at each time step as shown in figure 1b, i.e.,
$$ \mathbf{z}_{t} = \nu (\mathbf{z}_{t-1}, y_{t}, \mathbf{x}_{t}, \mathbf{s}), \tag{2.7} $$
	where 
	- $\mathbf{z}_{t}\in \mathbb{R}^{\mathcal{H}}$ here is the hidden internal state of the RNN, and 
	- $\nu (\cdot)$ is the learnt memory update function
3. For instance, the Elman RNNs, one of the simplest RNN variants, would take the form below
$$ y_{t+1} = \gamma_{y} (\mathbf{W}_{y}\mathbf{z}_{t} + \mathbf{b}_{y}) \tag{2.8} $$
	and
$$ \mathbf{z}_{t} = \gamma_{z} \left( \mathbf{W}_{z_{1}}\mathbf{z}_{t-1} + \mathbf{W}_{z_{2}}y_{t} + \mathbf{W}_{z_{3}}\mathbf{x}_{t} + \mathbf{W}_{z_{4}}\mathbf{s} + \mathbf{b}_{z} \right), \tag{2.9} $$
	where 
	- $\mathbf{W}.,\mathbf{b}.$ are the linear weights and biases of the network respectively, and 
	- $\gamma_{y}(\cdot), \gamma_{z}(\cdot)$ are network activation functions.
4. Note that RNNs do not require the explicit specification of a lookback window as per the CNN case. From a signal processing perspective, the main recurrent layer -- i.e. equation (2.9) -- thus resembles a nonlinear version of infinite impulse response (IIR) filters.

5. *Long short-term memory*.
	1. Due to the infinite lookback window, older variants of RNNs can suffer from limitations in learning long-range dependencies in the data -- due to issues with **exploding and vanishing gradients**.  Intuitively, this can be seen as a form of resonance in memory state.
	2. LSTMs were hence developed to address these limitations, by **improving gradient flow within the network**. This is achieved through the use of a cell state $\mathbf{c}_{t}$ which stores long-term information, modulated through a series of gates below.
$$ \begin{align}
\text{input gate: } \mathbf{i}_{t} &= \sigma \left( \mathbf{W}_{i_{1}}\mathbf{z}_{t-1} + \mathbf{W}_{i_{2}}y_{t} + \mathbf{W}_{i_{3}}\mathbf{x}_{t} + \mathbf{W}_{i_{4}}\mathbf{s} + \mathbf{b}_{i} \right), \tag{2.10} \\
\text{output gate: } \mathbf{o}_{t} &= \sigma \left( \mathbf{W}_{o_{1}}\mathbf{z}_{t-1} + \mathbf{W}_{o_{2}}y_{t} + \mathbf{W}_{o_{3}}\mathbf{x}_{t} + \mathbf{W}_{o_{4}}\mathbf{s} + \mathbf{b}_{o} \right), \tag{2.11} \\
\text{forget gate: } \mathbf{f}_{t} &= \sigma \left( \mathbf{W}_{f_{1}}\mathbf{z}_{t-1} + \mathbf{W}_{f_{2}}y_{t} + \mathbf{W}_{f_{3}}\mathbf{x}_{t} + \mathbf{W}_{f_{4}}\mathbf{s} + \mathbf{b}_{f} \right), \tag{2.12} \\
\end{align} $$
	where
	- $\mathbf{z}_{t-1}$ is the hidden state of the LSTM, and
	- $\sigma \left( \cdot \right)$ is the sigmoid activation function. 
	3. The gates modify the hidden and cell states of the LSTM as below
$$ \begin{align}
\text{hidden state: } \mathbf{z}_{t} &= \mathbf{o}_{t} \odot \tanh(\mathbf{c}_{t}) \tag{2.13} \\ 
\text{cell state: } \mathbf{c}_{t} &= \mathbf{f}_{t} \odot c_{t-1} + i_{t} \odot \tanh \left( \mathbf{W}_{c_{1}} \mathbf{z}_{t-1} + \mathbf{W}_{c_{2}} y_{t} + \mathbf{W}_{c_{3}} \mathbf{x}_{t} + \mathbf{W}_{c_{4}} \mathbf{s} + \mathbf{b}_{c} \right), \tag{2.14}
\end{align} $$
	where
	- $\odot$ is the element-wise (Hadamard) product, and
	- $\tanh \left( \cdot \right)$ is the tanh activation function. 

6. *Relationship to Bayesian filtering*
	1. 
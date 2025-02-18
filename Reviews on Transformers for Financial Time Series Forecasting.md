## Abstract 

The emergence of competitive deep learning models has increasing attached attention from both the academia and industry. Thus, as one of the fields that tend to chase the state-of-art and fashion technological trend, some previous work in financial time series forecasting have turned to deep learning models, including transformers. While an examination work questioning the effectiveness of transformers for general time series forecasting (TSF) in 2022, researchers are keen to work on creative design of transformer-based neural network architectures and related improvements. On the other hand, since the success of ChatGPT 3.5 in 2023 as the milestone of transformers and Large Language Models (LLMs), an alternative method is put forward that implement domain-specific LLM in financial text to obtain sentiment information or generate trading signals, which does not solve the forecasting problem but provide support in decision making in investment. This review will scan through the history of the above models and methods in financial time series forecasting.

## Introduction

The emergence of competitive deep learning models has increasing attached attention from both the academia and industry, and finally from the public right after the launch of ChatGPT (GPT-3.5 and GPT-4) [7].  Before ChatGPT, transformers with self-attention mechanism made a significant progress on the Natural Language Processing (NLP) tasks, and following on distinct tasks including speech recognition and computer vision [1, 3, 4, 10]. Transformers are therefore can be regarded as the most successful sequence modeling architecture.

Thus, as one of the fields that tend to chase the state-of-art and fashion technological trend, finance has been drown to deep learning. According to the proliferation of deep learning models, some previous work in financial time series forecasting have turned to these models and architectures, including transformers [3, 4]. 

Due to the nature of time series as a list of numerical numbers with temporal indexes, forecasting financial time series is deeply correlated to the general time series forecasting (TSF), so the techniques on the general TSF should be always focused for the financial TSF. Unfortunately in 2022, an examination work questioned the effectiveness of transformers for Long-term Time Series Forecasting (LTSF) tasks, with the state-of-art transformers at that time compared to "embarrassing simple" models, including *LTSF-Linear*, *DLinear*, *NLinear* and *Repeat* [2]. The results of the experiments prove that transformers-based models at that time is not appropriate on working the LTSF task, as the research group explains that the self-attention mechanism is permutation-invariant and will ignore some of the temporal / positional information of time series in nature. 

However, there are still new researches focusing on the financial TSF task with transformers and similar architectures. The sudden success of ChatGPT put NLP tasks and Large Language Models (LLMs) on the radar of researchers and practitioners in finance. In 2019, based on general-purpose Bidirectional Encoder Representations from Transformers (BERT), a domain-specific model FinBERT for NLP tasks in finance was introduced [11, 12]. And later in 2023 after the success of ChatGPT, BloombergGPT was put forward as the first LLM specialized for the financial domain [13].


*LSTF-Linear* with no other layers but a temporal simple layer, and *Repeat* which repeat the last value in the look-back window


## Reference
1. [Vaswani, A. "Attention is all you need." _Advances in Neural Information Processing Systems_ (2017).](https://arxiv.org/abs/1706.03762)
2. [Zeng, Ailing, et al. "Are transformers effective for time series forecasting?." _Proceedings of the AAAI conference on artificial intelligence_. Vol. 37. No. 9. 2023.](https://arxiv.org/abs/2205.13504)
3. [Lim, Bryan, and Stefan Zohren. "Time-series forecasting with deep learning: a survey." _Philosophical Transactions of the Royal Society A_ 379.2194 (2021): 20200209.](https://arxiv.org/abs/2004.13408)
4. [Wen, Qingsong, et al. "Transformers in time series: A survey." _arXiv preprint arXiv:2202.07125_ (2022).](https://arxiv.org/abs/2202.07125)
5. [Zerveas, George, et al. "A transformer-based framework for multivariate time series representation learning." _Proceedings of the 27th ACM SIGKDD conference on knowledge discovery & data mining_. 2021.](https://arxiv.org/abs/2010.02803v3)
6. [Yang, Hongyang, Xiao-Yang Liu, and Christina Dan Wang. "Fingpt: Open-source financial large language models." _arXiv preprint arXiv:2306.06031_ (2023).](https://arxiv.org/abs/2306.06031v1)
7. [Liu, Yiheng, et al. "Summary of chatgpt-related research and perspective towards the future of large language models." _Meta-Radiology_ (2023): 100017.](https://arxiv.org/abs/2304.01852)
8. [Ekambaram, Vijay, et al. "TTMs: Fast Multi-level Tiny Time Mixers for Improved Zero-shot and Few-shot Forecasting of Multivariate Time Series." _arXiv preprint arXiv:2401.03955_ (2024).](https://arxiv.org/abs/2401.03955v7)
9. [Nie, Yuqi, et al. "A time series is worth 64 words: Long-term forecasting with transformers." _arXiv preprint arXiv:2211.14730_ (2022).](https://arxiv.org/abs/2211.14730)
10. [Deep Learning Foundations and Concepts](https://doi.org/10.1007/978-3-031-45468-4)
11. [Devlin, Jacob, et al. “BERT: Pre-Training of Deep Bidirectional Transformers for Language Understanding.” _Proceedings of the 2019 Conference of the North_, 2019, https://doi.org/10.18653/v1/n19-1423.](https://arxiv.org/abs/1810.04805v2)
12. [Araci, Dogu. “FINBERT: FINANCIAL SENTIMENT ANALYSIS WITH PRE-TRAINED LANGUAGE MODELS.” _arXiv: Computation and Language,arXiv: Computation and Language_, Aug. 2019.](https://arxiv.org/abs/1908.10063v1)
13. [Wu, Shijie, et al. _BloombergGPT: A Large Language Model for Finance_.](https://arxiv.org/abs/2303.17564v3)
14. 
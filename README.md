# 基于余弦相似度的P2P贷款风险评估
# Risk assessment of P2P loan based on cosine similarity
使用余弦相似度对贷款者贷款行为的风险进行评估，指导其做出风险最小的决策。
## 原理
思想就是使用简单的余弦定理来计算数据的余弦相似度，从而进行分类。
首先介绍下余弦相似度
### 公式

![Aaron Swartz](https://raw.githubusercontent.com/ineedahouse/markdownPhoto/main/p2pBasedCos/COS1.png)

上面公式中分子表示两个向量内积，分母表示两个向量的模的乘积

由上式可推导出两向量之间的cos值，公式如下

![Aaron Swartz](https://github.com/ineedahouse/markdownPhoto/raw/main/p2pBasedCos/COS3.png)

### 图像

![Aaron Swartz](https://github.com/ineedahouse/markdownPhoto/raw/main/p2pBasedCos/COS2.jpg)

由cos图像可知，当角度越接近于0，cos的值越接近于1，所以我们可以将数据进行向量化，计算数据间的余弦相似度，数据越相似，其cos的值越接近于1。

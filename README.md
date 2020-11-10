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
## 训练步骤
1. 对训练数据进行向量化处理
2. 确定要分类的数量，即准备分成几类
3. 在每一类中各随机选取一条记录作为初始中心向量
4. 遍历所有训练数据，对于训练数据i，分别计算训练数据i与各个类别的中心向量的余弦相似度
5. 将训练数据i分到余弦相似度最接近于1的类别，并重新计算该类的中心向量
6. 遍历完成后，保存各类中心向量，训练结束
## 测试步骤
1. 对测试数据进行向量化处理
2. 计算测试数据与各类中心向量的余弦相似度
3. 取余弦相似度最接近于1的类别作为预测结果
4. 计算测试准确率，测试结束

### *参考*
_《数学之美》-吴军_

# Compatibility

To see the full list of available ONNX Operators refer to [this table](https://github.com/onnx/onnx/blob/main/docs/Operators.md).

You can see below the list of current supported ONNX Operators:

|                            Operator                             |     Implemented      |
| :-------------------------------------------------------------: | :------------------: |
|           [MatMul](operators/tensor/tensor.matmul.md)           | :white\_check\_mark: |
|       [MatMulInteger](operators/tensor/tensor.matmul.md)        | :white\_check\_mark: |
|         [Add](operators/tensor/#arithmetic-operations)          | :white\_check\_mark: |
|         [Sub](operators/tensor/#arithmetic-operations)          | :white\_check\_mark: |
|         [Mul](operators/tensor/#arithmetic-operations)          | :white\_check\_mark: |
|         [Div](operators/tensor/#arithmetic-operations)          | :white\_check\_mark: |
|            [Equal](operators/tensor/tensor.equal.md)            | :white\_check\_mark: |
|          [Greater](operators/tensor/tensor.greater.md)          | :white\_check\_mark: |
|   [GreaterOrEqual](operators/tensor/tensor.greater\_equal.md)   | :white\_check\_mark: |
|             [Less](operators/tensor/tensor.less.md)             | :white\_check\_mark: |
|      [LessOrEqual](operators/tensor/tensor.less\_equal.md)      | :white\_check\_mark: |
|              [Abs](operators/tensor/tensor.abs.md)              | :white\_check\_mark: |
|             [Ceil](operators/tensor/tensor.ceil.md)             | :white\_check\_mark: |
|              [Exp](operators/tensor/tensor.exp.md)              | :white\_check\_mark: |
|              [Ln](operators/tensor/tensor.log.md)               | :white\_check\_mark: |
|          [Reshape](operators/tensor/tensor.reshape.md)          | :white\_check\_mark: |
|        [Transpose](operators/tensor/tensor.transpose.md)        | :white\_check\_mark: |
|           [ArgMax](operators/tensor/tensor.argmax.md)           | :white\_check\_mark: |
|           [ArgMin](operators/tensor/tensor.argmin.md)           | :white\_check\_mark: |
|       [ReduceSum](operators/tensor/tensor.reduce\_sum.md)       | :white\_check\_mark: |
|           [CumSum](operators/tensor/tensor.cumsum.md)           | :white\_check\_mark: |
|              [Cos](operators/tensor/tensor.cos.md)              | :white\_check\_mark: |
|              [Sin](operators/tensor/tensor.sin.md)              | :white\_check\_mark: |
|             [Asin](operators/tensor/tensor.asin.md)             | :white\_check\_mark: |
|          [Flatten](operators/tensor/tensor.flatten.md)          | :white\_check\_mark: |
|           [Relu](operators/neural-network/nn.relu.md)           | :white\_check\_mark: |
|     [LeakyRelu](operators/neural-network/nn.leaky\_relu.md)     | :white\_check\_mark: |
|        [Sigmoid](operators/neural-network/nn.sigmoid.md)        | :white\_check\_mark: |
|        [Softmax](operators/neural-network/nn.softmax.md)        | :white\_check\_mark: |
|     [LogSoftmax](operators/neural-network/nn.logsoftmax.md)     | :white\_check\_mark: |
|       [Softsign](operators/neural-network/nn.softsign.md)       | :white\_check\_mark: |
|       [Softplus](operators/neural-network/nn.softplus.md)       | :white\_check\_mark: |
|         [Linear](operators/neural-network/nn.linear.md)         | :white\_check\_mark: |
|             [Sinh](operators/tensor/tensor.sinh.md)             | :white\_check\_mark: |
|            [Asinh](operators/tensor/tensor.asinh.md)            | :white\_check\_mark: |
|             [Cosh](operators/tensor/tensor.cosh.md)             | :white\_check\_mark: |
|            [ACosh](operators/tensor/tensor.acosh.md)            | :white\_check\_mark: |
|             [Tanh](operators/tensor/tensor.tanh.md)             | :white\_check\_mark: |
|             [Acos](operators/tensor/tensor.acos.md)             | :white\_check\_mark: |
|             [Sqrt](operators/tensor/tensor.sqrt.md)             | :white\_check\_mark: |
|           [Onehot](operators/tensor/tensor.onehot.md)           | :white\_check\_mark: |
|            [Slice](operators/tensor/tensor.slice.md)            | :white\_check\_mark: |
|           [Concat](operators/tensor/tensor.concat.md)           | :white\_check\_mark: |
|           [Gather](operators/tensor/tensor.gather.md)           | :white\_check\_mark: |
|  [QuantizeLinear](operators/tensor/tensor.quantize\_linear.md)  | :white\_check\_mark: |
| [DequantizeLinear](operators/tensor/tensor.quantize\_linear.md) | :white\_check\_mark: |
|          [Nonzero](operators/tensor/tensor.nonzero.md)          | :white\_check\_mark: |
|          [Squeeze](operators/tensor/tensor.squeeze.md)          | :white\_check\_mark: |
|        [Unsqueeze](operators/tensor/tensor.unsqueeze.md)        | :white\_check\_mark: |
|             [Sign](operators/tensor/tensor.sign.md)             | :white\_check\_mark: |
|             [Clip](operators/tensor/tensor.clip.md)             | :white\_check\_mark: |

Current Operators support: **50/156 (32%)**

use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::FixedTrait;
use orion::numbers::FP8x23;

fn input_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 35370496, sign: false });
    data.append(FP8x23 { mag: 51831526, sign: false });
    data.append(FP8x23 { mag: 26129513, sign: true });
    data.append(FP8x23 { mag: 10508621, sign: true });
    TensorTrait::new(shape.span(), data.span())
}

use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::FixedTrait;
use orion::numbers::FP8x23;

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 5380341, sign: true });
    data.append(FP8x23 { mag: 1482889, sign: false });
    data.append(FP8x23 { mag: 4552681, sign: false });
    data.append(FP8x23 { mag: 3981246, sign: false });
    TensorTrait::new(shape.span(), data.span())
}

mod input_0;
mod output_0;


use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::TensorTrait;
use orion::operators::tensor::FP8x23Tensor;
use orion::operators::tensor::FP8x23TensorPartialEq;
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_slice_fp8x23_2d() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0
        .slice(
            array![0, 2].span(),
            array![2, 4].span(),
            Option::Some(array![0, 1].span()),
            Option::Some(array![1, 1].span())
        );

    assert_eq(y, z);
}

//! This module defines and implement a Tensor for FixedType values.

use array::ArrayTrait;
use array::SpanTrait;
use option::OptionTrait;

use orion::numbers::fixed_point::core::FixedType;

use orion::operators::tensor::core::{
    new_tensor, stride, Tensor, ExtraParams, TensorTrait, ravel_index, unravel_index, reshape,
    at_tensor, tensor_eq
};
use orion::operators::tensor::math::min::min_fp::core::min_in_tensor;
use orion::operators::tensor::math::max::max_fp::core::max_in_tensor;
use orion::operators::tensor::math::equal::equal_fp::core::equal;
use orion::operators::tensor::math::less::less_fp::core::less;
use orion::operators::tensor::math::less_equal::less_equal_fp::core::less_equal;
use orion::operators::tensor::math::abs::abs_fp::core::abs;
use orion::operators::tensor::math::ceil::ceil_fp::core::ceil;
use orion::operators::tensor::math::reduce_sum::reduce_sum_fp::core::reduce_sum;
use orion::operators::tensor::math::argmax::argmax_fp::core::argmax;
use orion::operators::tensor::math::argmin::argmin_fp::core::argmin;
use orion::operators::tensor::linalg::matmul::matmul_fp::core::matmul;
use orion::operators::tensor::linalg::transpose::transpose_fp::core::transpose;
use orion::operators::tensor::math::exp::exp_fp::core::exp;
use orion::operators::tensor::math::log::log_fp::core::log;
use orion::operators::tensor::math::arithmetic::arithmetic_fp::core::{add, sub, mul, div};
use orion::operators::tensor::math::greater::greater_fp::core::greater;
use orion::operators::tensor::math::greater_equal::greater_equal_fp::core::greater_equal;
use orion::operators::tensor::math::cumsum::cumsum_fp::core::cumsum;
use orion::operators::tensor::math::flatten::flatten_fp::core::flatten;
use orion::operators::tensor::math::sinh::sinh_fp::core::sinh;
use orion::operators::tensor::math::tanh::tanh_fp::core::tanh;
use orion::operators::tensor::math::cosh::cosh_fp::core::cosh;
use orion::operators::tensor::math::acosh::acosh_fp::core::acosh;
use orion::operators::tensor::math::asinh::asinh_fp::core::asinh;
use orion::operators::tensor::math::sin::sin_fp::core::sin;
use orion::operators::tensor::math::cos::cos_fp::core::cos;
use orion::operators::tensor::math::asin::asin_fp::core::asin;
use orion::operators::tensor::math::atan::atan_fp::core::atan;
use orion::operators::tensor::math::xor::xor_fp::core::xor;
use orion::operators::tensor::math::or::or_fp::core::or;
use orion::operators::tensor::math::acos::acos_fp::core::acos;
use orion::operators::tensor::math::sqrt::sqrt_fp::core::sqrt;

impl Tensor_fp of TensorTrait<FixedType> {
    fn new(
        shape: Span<usize>, data: Span<FixedType>, extra: Option<ExtraParams>
    ) -> Tensor<FixedType> {
        new_tensor(shape, data, extra)
    }

    fn at(self: @Tensor<FixedType>, indices: Span<usize>) -> FixedType {
        *at_tensor(self, indices)
    }

    fn min(self: @Tensor<FixedType>) -> FixedType {
        min_in_tensor(*self.data, *self.extra).unwrap()
    }

    fn max(self: @Tensor<FixedType>) -> FixedType {
        max_in_tensor(*self.data, *self.extra).unwrap()
    }

    fn stride(self: @Tensor<FixedType>) -> Span<usize> {
        stride(*self.shape)
    }

    fn ravel_index(self: @Tensor<FixedType>, indices: Span<usize>) -> usize {
        ravel_index(*self.shape, indices)
    }

    fn unravel_index(self: @Tensor<FixedType>, index: usize) -> Span<usize> {
        unravel_index(index, *self.shape)
    }

    fn reshape(self: @Tensor<FixedType>, target_shape: Span<usize>) -> Tensor<FixedType> {
        reshape(self, target_shape)
    }

    fn reduce_sum(self: @Tensor<FixedType>, axis: usize, keepdims: bool) -> Tensor<FixedType> {
        reduce_sum(self, axis, keepdims).unwrap()
    }

    fn argmax(
        self: @Tensor<FixedType>,
        axis: usize,
        keepdims: Option<bool>,
        select_last_index: Option<bool>
    ) -> Tensor<usize> {
        argmax(self, axis, keepdims, select_last_index).unwrap()
    }

    fn argmin(
        self: @Tensor<FixedType>,
        axis: usize,
        keepdims: Option<bool>,
        select_last_index: Option<bool>
    ) -> Tensor<usize> {
        argmin(self, axis, keepdims, select_last_index).unwrap()
    }

    fn transpose(self: @Tensor<FixedType>, axes: Span<usize>) -> Tensor<FixedType> {
        transpose(self, axes).unwrap()
    }

    fn matmul(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<FixedType> {
        matmul(self, other).unwrap()
    }

    fn exp(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        exp(self).unwrap()
    }

    fn log(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        log(self).unwrap()
    }

    fn equal(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        equal(self, other).unwrap()
    }

    fn greater(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        greater(self, other).unwrap()
    }

    fn greater_equal(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        greater_equal(self, other).unwrap()
    }

    fn less(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        less(self, other).unwrap()
    }

    fn less_equal(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        less_equal(self, other).unwrap()
    }

    fn abs(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        abs(self).unwrap()
    }

    fn ceil(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        ceil(self).unwrap()
    }

    fn sin(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        sin(self).unwrap()
    }

    fn cos(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        cos(self).unwrap()
    }

    fn asin(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        asin(self).unwrap()
    }

    fn cumsum(
        self: @Tensor<FixedType>, axis: usize, exclusive: Option<bool>, reverse: Option<bool>
    ) -> Tensor<FixedType> {
        cumsum(self, axis, exclusive, reverse).unwrap()
    }

    fn flatten(self: @Tensor<FixedType>, axis: usize) -> Tensor<FixedType> {
        flatten(self, axis).unwrap()
    }

    fn sinh(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        sinh(self).unwrap()
    }

    fn tanh(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        tanh(self).unwrap()
    }

    fn cosh(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        cosh(self).unwrap()
    }

    fn acosh(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        acosh(self).unwrap()
    }

    fn asinh(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        asinh(self).unwrap()
    }

    fn atan(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        atan(self).unwrap()
    }

    fn xor(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        xor(self, other).unwrap()
    }
    
    fn or(self: @Tensor<FixedType>, other: @Tensor<FixedType>) -> Tensor<usize> {
        or(self, other).unwrap()
    }
    
    fn acos(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        acos(self).unwrap()
    }

    fn sqrt(self: @Tensor<FixedType>) -> Tensor<FixedType> {
        sqrt(self).unwrap()
    }
}

/// Implements addition for `Tensor<FixedType>` using the `Add` trait.
impl FixedTypeTensorAdd of Add<Tensor<FixedType>> {
    /// Adds two `Tensor<FixedType>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FixedType>` instance representing the result of the element-wise addition.
    fn add(lhs: Tensor<FixedType>, rhs: Tensor<FixedType>) -> Tensor<FixedType> {
        add(@lhs, @rhs).unwrap()
    }
}

/// Implements subtraction for `Tensor<FixedType>` using the `Sub` trait.
impl FixedTypeTensorSub of Sub<Tensor<FixedType>> {
    /// Subtracts two `Tensor<FixedType>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FixedType>` instance representing the result of the element-wise subtraction.
    fn sub(lhs: Tensor<FixedType>, rhs: Tensor<FixedType>) -> Tensor<FixedType> {
        sub(@lhs, @rhs).unwrap()
    }
}

/// Implements multiplication for `Tensor<FixedType>` using the `Mul` trait.
impl FixedTypeTensorMul of Mul<Tensor<FixedType>> {
    /// Multiplies two `Tensor<FixedType>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FixedType>` instance representing the result of the element-wise multiplication.
    fn mul(lhs: Tensor<FixedType>, rhs: Tensor<FixedType>) -> Tensor<FixedType> {
        mul(@lhs, @rhs).unwrap()
    }
}

/// Implements division for `Tensor<FixedType>` using the `Div` trait.
impl FixedTypeTensorDiv of Div<Tensor<FixedType>> {
    /// Divides two `Tensor<FixedType>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FixedType>` instance representing the result of the element-wise division.
    fn div(lhs: Tensor<FixedType>, rhs: Tensor<FixedType>) -> Tensor<FixedType> {
        div(@lhs, @rhs).unwrap()
    }
}


mod FP8x23Tensor {
    use array::{ArrayTrait, SpanTrait};
    use option::OptionTrait;
    use orion::numbers::fixed_point::implementations::impl_8x23::{
        FP8x23PartialEq, FP8x23Impl, FP8x23Sub, FP8x23Div
    };
    use super::{Tensor, FixedType};

    const PRECISION: u128 = 75497; // 0.009

    fn relative_eq(lhs: @FixedType, rhs: @FixedType) -> bool {
        let diff = *lhs - *rhs;

        let rel_diff = if *lhs.mag != 0 {
            (diff / *lhs).mag
        } else {
            diff.mag
        };

        rel_diff <= PRECISION
    }


    fn tensor_eq(mut lhs: Tensor<FixedType>, mut rhs: Tensor<FixedType>, ) -> bool {
        let mut is_eq = true;

        loop {
            if lhs.shape.len() == 0 || !is_eq {
                break;
            }

            is_eq = lhs.shape.pop_front().unwrap() == rhs.shape.pop_front().unwrap();
        };

        if !is_eq {
            return false;
        }

        loop {
            if lhs.data.len() == 0 || !is_eq {
                break;
            }

            is_eq = relative_eq(lhs.data.pop_front().unwrap(), rhs.data.pop_front().unwrap());
        };

        return is_eq;
    }

    /// Implements partial equal for two `Tensor<FixedType>` using the `PartialEq` trait.
    impl FPTensorPartialEq of PartialEq<Tensor<FixedType>> {
        fn eq(lhs: @Tensor<FixedType>, rhs: @Tensor<FixedType>) -> bool {
            tensor_eq(*lhs, *rhs)
        }

        fn ne(lhs: @Tensor<FixedType>, rhs: @Tensor<FixedType>) -> bool {
            !tensor_eq(*lhs, *rhs)
        }
    }
}

mod FP16x16Tensor {
    use array::{ArrayTrait, SpanTrait};
    use option::OptionTrait;
    use orion::numbers::fixed_point::implementations::impl_16x16::{
        FP16x16PartialEq, FP16x16Impl, FP16x16Sub, FP16x16Div
    };
    use super::{Tensor, FixedType};

    const PRECISION: u128 = 589; // 0.009

    fn relative_eq(lhs: @FixedType, rhs: @FixedType) -> bool {
        let diff = *lhs - *rhs;

        let rel_diff = if *lhs.mag != 0 {
            (diff / *lhs).mag
        } else {
            diff.mag
        };

        rel_diff <= PRECISION
    }


    fn tensor_eq(mut lhs: Tensor<FixedType>, mut rhs: Tensor<FixedType>, ) -> bool {
        let mut is_eq = true;

        loop {
            if lhs.shape.len() == 0 || !is_eq {
                break;
            }

            is_eq = lhs.shape.pop_front().unwrap() == rhs.shape.pop_front().unwrap();
        };

        if !is_eq {
            return false;
        }

        loop {
            if lhs.data.len() == 0 || !is_eq {
                break;
            }

            is_eq = relative_eq(lhs.data.pop_front().unwrap(), rhs.data.pop_front().unwrap());
        };

        return is_eq;
    }

    /// Implements partial equal for two `Tensor<FixedType>` using the `PartialEq` trait.
    impl FPTensorPartialEq of PartialEq<Tensor<FixedType>> {
        fn eq(lhs: @Tensor<FixedType>, rhs: @Tensor<FixedType>) -> bool {
            tensor_eq(*lhs, *rhs)
        }

        fn ne(lhs: @Tensor<FixedType>, rhs: @Tensor<FixedType>) -> bool {
            !tensor_eq(*lhs, *rhs)
        }
    }
}

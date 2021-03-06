// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import 'strong_mode_test.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(StrongModeLocalInferenceTest_Kernel);
    defineReflectiveTests(StrongModeStaticTypeAnalyzer2Test_Kernel);
    defineReflectiveTests(StrongModeTypePropagationTest_Kernel);
  });
}

/// Tests marked with this annotations fail because we either have not triaged
/// them, or know that this is an analyzer problem.
const potentialAnalyzerProblem = const Object();

/// Tests marked with this annotation fail because of a Fasta problem.
class FastaProblem {
  const FastaProblem(String issueUri);
}

@reflectiveTest
class StrongModeLocalInferenceTest_Kernel extends StrongModeLocalInferenceTest {
  @override
  bool get enableKernelDriver => true;

  @override
  bool get enableNewAnalysisDriver => true;

  @override
  bool get useCFE => true;

  @override
  @failingTest
  test_constrainedByBounds2() async {
    // Expected: InterfaceTypeImpl:<int>
    await super.test_constrainedByBounds2();
  }

  @override
  @failingTest
  test_constrainedByBounds3() async {
    // Expected: InterfaceTypeImpl:<int>
    await super.test_constrainedByBounds3();
  }

  @override
  @failingTest
  test_constrainedByBounds5() async {
    // Bad state: Expected a type for 4 at 119; got one for kernel offset 118
    await super.test_constrainedByBounds5();
  }

  @override
  @failingTest
  test_covarianceChecks() async {
    // NoSuchMethodError: The method 'toList' was called on null.
    await super.test_covarianceChecks();
  }

  @override
  @failingTest
  test_covarianceChecks_genericMethods() async {
    // NoSuchMethodError: The method 'toList' was called on null.
    await super.test_covarianceChecks_genericMethods();
  }

  @override
  @failingTest
  test_covarianceChecks_returnFunction() async {
    // AnalysisException: Element mismatch in /test.dart at class C<T>
    await super.test_covarianceChecks_returnFunction();
  }

  @override
  @failingTest
  test_covarianceChecks_superclass() async {
    // NoSuchMethodError: The method 'toList' was called on null.
    await super.test_covarianceChecks_superclass();
  }

  @override
  @failingTest
  test_futureOr_downwards8() async {
    // type 'BottomTypeImpl' is not a subtype of type 'InterfaceType' in type cast where
    await super.test_futureOr_downwards8();
  }

  @override
  @failingTest
  test_futureOr_methods2() async {
    // Expected 1 errors of type StaticTypeWarningCode.UNDEFINED_METHOD, found 0
    await super.test_futureOr_methods2();
  }

  @override
  @failingTest
  test_futureOr_methods3() async {
    // Expected 1 errors of type StaticTypeWarningCode.UNDEFINED_METHOD, found 0
    await super.test_futureOr_methods3();
  }

  @override
  @failingTest
  test_futureOr_methods4() async {
    // Expected 1 errors of type StaticTypeWarningCode.UNDEFINED_METHOD, found 0
    await super.test_futureOr_methods4();
  }

  @override
  @failingTest
  test_futureOr_no_return() async {
    // Expected: InterfaceTypeImpl:<Null>
    await super.test_futureOr_no_return();
  }

  @override
  @failingTest
  test_futureOr_no_return_value() async {
    // Expected: InterfaceTypeImpl:<Null>
    await super.test_futureOr_no_return_value();
  }

  @override
  @failingTest
  test_futureOr_return_null() async {
    // Expected: InterfaceTypeImpl:<Null>
    await super.test_futureOr_return_null();
  }

  @override
  @failingTest
  test_futureOr_upwards2() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0
    await super.test_futureOr_upwards2();
  }

  @override
  @failingTest
  test_generic_partial() async {
    // AnalysisException: Element mismatch in /test.dart at class A<T>
    await super.test_generic_partial();
    // TODO(brianwilkerson) This test periodically fails (by not throwing an
    // exception), so I am temporarily disabling it. The cause of the flaky
    // behavior needs to be investigated.
    fail('Flaky test');
  }

  @override
  @failingTest
  test_inference_error_arguments() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0;
    //          1 errors of type StaticWarningCode.ARGUMENT_TYPE_NOT_ASSIGNABLE, found 0
    await super.test_inference_error_arguments();
  }

  @override
  @failingTest
  test_inference_error_arguments2() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0;
    //          2 errors of type StaticWarningCode.ARGUMENT_TYPE_NOT_ASSIGNABLE, found 0
    await super.test_inference_error_arguments2();
  }

  @override
  @failingTest
  test_inference_error_extendsFromReturn() async {
    // Expected 2 errors of type StrongModeCode.STRONG_MODE_INVALID_CAST_LITERAL, found 0
    await super.test_inference_error_extendsFromReturn();
  }

  @override
  @failingTest
  test_inference_error_extendsFromReturn2() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0
    await super.test_inference_error_extendsFromReturn2();
  }

  @override
  @failingTest
  test_inference_error_genericFunction() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0;
    //          1 errors of type StaticWarningCode.ARGUMENT_TYPE_NOT_ASSIGNABLE, found 0
    await super.test_inference_error_genericFunction();
  }

  @override
  @failingTest
  test_inference_error_returnContext() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0
    await super.test_inference_error_returnContext();
  }

  @override
  @failingTest
  test_inferGenericInstantiation2() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_COULD_NOT_INFER, found 0;
    //          1 errors of type StaticWarningCode.ARGUMENT_TYPE_NOT_ASSIGNABLE, found 0
    await super.test_inferGenericInstantiation2();
  }

  @override
  @failingTest
  test_instanceCreation() async {
    // AnalysisException: Element mismatch in /test.dart at class A<S, T>
    await super.test_instanceCreation();
    // TODO(brianwilkerson) This test fails as expected when run as part of a
    // larger group of tests, but does not fail when run individually (such as
    // on the bots).
    fail('Flaky test');
  }

  @override
  @failingTest
  test_pinning_multipleConstraints1() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_INVALID_CAST_LITERAL, found 0
    await super.test_pinning_multipleConstraints1();
  }

  @override
  @failingTest
  test_pinning_multipleConstraints3() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_INVALID_CAST_LITERAL, found 0
    await super.test_pinning_multipleConstraints3();
  }

  @override
  @failingTest
  test_redirectedConstructor_named() {
    // Expected: 'A<T2, U2>'; Actual: 'A<T, U>'
    return super.test_redirectedConstructor_named();
  }

  @override
  @failingTest
  test_redirectedConstructor_unnamed() {
    // Expected: 'A<T2, U2>'; Actual: 'A<T, U>'
    return super.test_redirectedConstructor_unnamed();
  }

  @override
  @failingTest
  test_redirectingConstructor_propagation() async {
    // AnalysisException: Element mismatch in /test.dart at class A
    await super.test_redirectingConstructor_propagation();
    // TODO(brianwilkerson) Figure out why this test is flaky.
    fail('Flaky test');
  }
}

@reflectiveTest
class StrongModeStaticTypeAnalyzer2Test_Kernel
    extends StrongModeStaticTypeAnalyzer2Test {
  @override
  bool get enableKernelDriver => true;

  @override
  bool get enableNewAnalysisDriver => true;

  @override
  bool get useCFE => true;

  @override
  @failingTest
  test_genericFunction_parameter() async {
    // Failed to resolve 1 nodes:
    await super.test_genericFunction_parameter();
  }

  @override
  @failingTest
  test_genericMethod_explicitTypeParams() async {
    // Bad state: Found 2 argument types for 1 type arguments
    await super.test_genericMethod_explicitTypeParams();
  }

  @override
  @failingTest
  test_genericMethod_functionExpressionInvocation_explicit() async {
    // Bad state: Expected element declaration for analyzer offset 230; got one for kernel offset 233
    await super.test_genericMethod_functionExpressionInvocation_explicit();
  }

  @override
  @failingTest
  test_genericMethod_functionExpressionInvocation_functionTypedParameter_explicit() {
    // Failed to resolve 2 nodes
    return super
        .test_genericMethod_functionExpressionInvocation_functionTypedParameter_explicit();
  }

  @override
  @failingTest
  test_genericMethod_functionExpressionInvocation_functionTypedParameter_inferred() {
    // Failed to resolve 1 nodes
    return super
        .test_genericMethod_functionExpressionInvocation_functionTypedParameter_inferred();
  }

  @override
  @failingTest
  test_genericMethod_functionExpressionInvocation_inferred() async {
    // Bad state: Expected element declaration for analyzer offset 230; got one for kernel offset 233
    await super.test_genericMethod_functionExpressionInvocation_inferred();
  }

  @override
  @failingTest
  test_genericMethod_functionInvocation_explicit() async {
    // Failed to resolve 1 nodes:
    await super.test_genericMethod_functionInvocation_explicit();
  }

  @override
  @failingTest
  test_genericMethod_functionInvocation_functionTypedParameter_explicit() {
    // Failed to resolve 1 nodes
    return super
        .test_genericMethod_functionInvocation_functionTypedParameter_explicit();
  }

  @override
  @failingTest
  test_genericMethod_functionInvocation_functionTypedParameter_inferred() {
    // Failed to resolve 1 nodes
    return super
        .test_genericMethod_functionInvocation_functionTypedParameter_inferred();
  }

  @override
  @failingTest
  test_genericMethod_functionInvocation_inferred() async {
    // Failed to resolve 1 nodes:
    await super.test_genericMethod_functionInvocation_inferred();
  }

  @override
  @failingTest
  test_genericMethod_functionTypedParameter_tearoff() {
    // Failed to resolve 1 nodes
    return super.test_genericMethod_functionTypedParameter_tearoff();
  }

  @override
  @failingTest
  test_genericMethod_implicitDynamic() async {
    // Expected: '<T>((dynamic) → T) → T'
    await super.test_genericMethod_implicitDynamic();
  }

  @override
  @failingTest
  test_genericMethod_nestedCapture() async {
    // Bad state: Found 2 argument types for 1 type arguments
    await super.test_genericMethod_nestedCapture();
  }

  @override
  @failingTest
  test_genericMethod_override_invalidContravariantTypeParamBounds() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_INVALID_METHOD_OVERRIDE, found 0
    await super
        .test_genericMethod_override_invalidContravariantTypeParamBounds();
  }

  @override
  @failingTest
  test_genericMethod_override_invalidCovariantTypeParamBounds() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_INVALID_METHOD_OVERRIDE, found 0
    await super
        .test_genericMethod_override_invalidContravariantTypeParamBounds();
  }

  @override
  @failingTest
  test_genericMethod_override_invalidTypeParamCount() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_INVALID_METHOD_OVERRIDE, found 0
    await super.test_genericMethod_override_invalidTypeParamCount();
  }

  @override
  @failingTest
  test_genericMethod_partiallyAppliedErrorWithBound() async {
    // Bad state: Found 0 argument types for 1 type arguments
    await super.test_genericMethod_partiallyAppliedErrorWithBound();
  }

  @override
  @failingTest
  test_genericMethod_tearoff() async {
    // Failed to resolve 1 nodes:
    await super.test_genericMethod_tearoff();
  }

  @override
  @failingTest
  test_genericMethod_toplevel_field_staticTearoff() {
    // Failed to resolve 1 nodes
    return super.test_genericMethod_toplevel_field_staticTearoff();
  }

  @override
  test_notInstantiatedBound_class_error_recursion_less_direct() async {
    return super.test_notInstantiatedBound_class_error_recursion_less_direct();
  }

  @override
  @failingTest
  test_notInstantiatedBound_class_error_recursion_typedef() {
    // Expected 2 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0; 1 errors of
    // type CompileTimeErrorCode.TYPE_ALIAS_CANNOT_REFERENCE_ITSELF, found 0
    return super.test_notInstantiatedBound_class_error_recursion_typedef();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_class_argument() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_class_argument();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_class_argument2() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_class_argument2();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_class_direct() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_class_direct();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_class_indirect() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_class_indirect();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_functionType() {
    // Expected 2 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_functionType();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_typedef_argument() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_typedef_argument();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_typedef_argument2() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_typedef_argument2();
  }

  @override
  @failingTest
  test_notInstantiatedBound_error_typedef_direct() {
    // Expected 1 errors of type
    // StrongModeCode.STRONG_MODE_NOT_INSTANTIATED_BOUND, found 0
    return super.test_notInstantiatedBound_error_typedef_direct();
  }

  @override
  @failingTest
  test_setterWithDynamicTypeIsError() async {
    // Expected 2 errors of type StaticWarningCode.NON_VOID_RETURN_FOR_SETTER, found 0
    await super.test_setterWithDynamicTypeIsError();
  }

  @override
  @failingTest
  test_setterWithOtherTypeIsError() async {
    // Expected 2 errors of type StaticWarningCode.NON_VOID_RETURN_FOR_SETTER, found 0
    await super.test_setterWithOtherTypeIsError();
  }
}

@reflectiveTest
class StrongModeTypePropagationTest_Kernel
    extends StrongModeTypePropagationTest {
  @override
  bool get enableKernelDriver => true;

  @override
  bool get enableNewAnalysisDriver => true;

  @override
  bool get useCFE => true;
}

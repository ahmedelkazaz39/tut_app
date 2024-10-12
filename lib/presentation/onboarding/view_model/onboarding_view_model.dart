import 'package:e_commerce_app/presentation/base/base_view_model.dart';

class OnboardingViewModel
    implements
        BaseViewModel,
        OnboardingViewModelInputs,
        OnboardingViewModelOutputs {
  //? stream controller for outputs
  @override
  void dispose() {}

  @override
  void start() {}

  @override
  void goNext() {}

  @override
  void goPrevious() {}

  @override
  void onPageChanged(index) {}
}

//! orders (inputs) that our view model will receive from the view
abstract class OnboardingViewModelInputs {
  void goNext(); //? when user clicks on the right arrow button or swipe left
  void
      goPrevious(); //? when user clicks on the left arrow button or swipe right
  void onPageChanged(index);
}

abstract class OnboardingViewModelOutputs {}

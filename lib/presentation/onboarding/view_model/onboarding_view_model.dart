import 'dart:async';
import 'package:e_commerce_app/domain/models.dart';
import 'package:e_commerce_app/presentation/base/base_view_model.dart';
import 'package:e_commerce_app/presentation/resources/assets_manager.dart';
import 'package:e_commerce_app/presentation/resources/strings_manager.dart';

class OnboardingViewModel
    implements
        BaseViewModel,
        OnboardingViewModelInputs,
        OnboardingViewModelOutputs {
  //? stream controller for outputs
  final StreamController _streamController =
      StreamController<SliderViewModel>();
  late final List<SliderObject> _list;
  int _currentPage = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    //view model start your job
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = ++_currentPage;
    if (nextIndex == 4) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentPage;
    if (previousIndex == -2) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(index) {
    _currentPage = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewModel => _streamController.sink;

  @override
  Stream<SliderViewModel> get outputSliderViewModel =>
      _streamController.stream.map((event) => event);

  // private functions
  void _postDataToView() {
    inputSliderViewModel.add(SliderViewModel(
      currentIndex: _currentPage,
      numOfSlids: _list.length,
      sliderObject: _list[_currentPage],
    ));
  }

  List<SliderObject> _getSliderData() {
    return [
      SliderObject(
        title: AppStrings.onBoardingTitle1,
        subTitle: AppStrings.onBoardingSubTitle1,
        image: ImageAssets.onBoardingLogo1,
      ),
      SliderObject(
        title: AppStrings.onBoardingTitle2,
        subTitle: AppStrings.onBoardingSubTitle2,
        image: ImageAssets.onBoardingLogo2,
      ),
      SliderObject(
        title: AppStrings.onBoardingTitle3,
        subTitle: AppStrings.onBoardingSubTitle3,
        image: ImageAssets.onBoardingLogo3,
      ),
      SliderObject(
        title: AppStrings.onBoardingTitle4,
        subTitle: AppStrings.onBoardingSubTitle4,
        image: ImageAssets.onBoardingLogo4,
      ),
    ];
  }
}

// orders (inputs) that our view model will receive from the view
abstract class OnboardingViewModelInputs {
  int goNext(); // when user clicks on the right arrow button or swipe left
  int goPrevious(); // when user clicks on the left arrow button or swipe right
  void onPageChanged(index);

  // stream input controller
  Sink get inputSliderViewModel;
}

abstract class OnboardingViewModelOutputs {
  // stream input controller
  Stream<SliderViewModel> get outputSliderViewModel;
}

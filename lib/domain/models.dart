//! onBoarding models
class SliderObject {
  String? title;
  String? subTitle;
  String? image;
  SliderObject({
    this.title,
    this.subTitle,
    this.image,
  });
}

// class pull data from view model  to view
class SliderViewModel {
  SliderObject? sliderObject;
  int? numOfSlids;
  int? currentIndex;
  SliderViewModel({
    this.sliderObject,
    this.numOfSlids,
    this.currentIndex,
  });
}

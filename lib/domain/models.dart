class SliderObject {
  String? title;
  String? subTitle;
  String? image;
  SliderObject({this.title, this.subTitle, this.image});
}

class SliderViewModel {
  SliderObject sliderObject;
  int numOfSlids;
  int currentIndex;
  SliderViewModel(this.sliderObject, this.numOfSlids, this.currentIndex);
}

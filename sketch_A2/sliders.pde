void timeSumSlider() {
  cp5.addSlider("timeSum")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    .setNumberOfTickMarks(12)
    .setSliderMode(Slider.FIX) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeSum").getValueLabel().align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSum").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSum").hide();
}

void timeAutSlider() {
  cp5.addSlider("timeAut")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    .setNumberOfTickMarks(12)
    .setSliderMode(Slider.FIX) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeAut").getValueLabel().align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeAut").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeAut").hide();
}

void timeWinSlider() {
  cp5.addSlider("timeWin")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    .setNumberOfTickMarks(12)
    .setSliderMode(Slider.FIX) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeWin").getValueLabel().align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeWin").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeWin").hide();
}
void timeSprSlider() {
  cp5.addSlider("timeSpr")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    .setNumberOfTickMarks(12)
    .setSliderMode(Slider.FIX) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeSpr").getValueLabel().align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSpr").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSpr").hide();
}

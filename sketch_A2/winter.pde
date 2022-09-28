void winter() {
  //clockBackground();
  readWinSolarxy();

  //if (index < win_solar_xy.getRowCount()) {
  //  //=== DO SOMETHING WITH DATA ===

  //  //=== END SOMETHING WITH DATA ===
  //  println("data point: ", index, " | ", win_solar_xy.getFloat(index, 1));
  //  index++;
  //}
}

void readWinSolarxy() {
  if (index < win_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", win_solar_xy.getFloat(index, 1));
    index++;
  }
}

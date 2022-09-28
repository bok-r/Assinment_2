void spring() {
  //clockBackground();
  readSprSolarxy();

  //if (index < spr_solar_xy.getRowCount()) {
  //  //=== DO SOMETHING WITH DATA ===

  //  //=== END SOMETHING WITH DATA ===
  //  println("data point: ", index, " | ", spr_solar_xy.getFloat(index, 1));
  //  index++;
  //}
}

void readSprSolarxy() {
  if (index < spr_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", spr_solar_xy.getFloat(index, 1));
    index++;
  }
}

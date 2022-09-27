void debug(ButtonBar b) {
  //=== BUTTON BAR ===
  println(b.getItem("a"));
  b.changeItem("a", "text", "WELCOME");
  b.changeItem("b", "text", "SUMMER");
  b.changeItem("c", "text", "AUTUMN");
  b.changeItem("d", "text", "WINTER");
  b.changeItem("e", "text", "SPRING");
  //=== END BUTTON BAR ===

  //======== CHECKS ========
  //boolean initial values
  println("sum; ", is_summer);
  println("aut; ", is_autumn);
  println("win; ", is_winter);
  println("spr; ", is_spring);

  //hover over buttons
  b.onMove(new CallbackListener() {
    public void controlEvent(CallbackEvent ev) {
      ButtonBar bar = (ButtonBar)ev.getController();
      println("hovered! ", bar.hover()); //prints to command when hovering on buttons
    }
  }
  );
}

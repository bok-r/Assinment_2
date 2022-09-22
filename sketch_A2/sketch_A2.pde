/*
 * Image sources
 * - https://www.vecteezy.com/ | https://www.vecteezy.com/free-png/nature
 * - spring tree: https://static.vecteezy.com/system/resources/previews/011/027/775/non_2x/hand-drawn-tree-watercolor-illustration-free-png.png
 * - autumn tree: https://static.vecteezy.com/system/resources/previews/011/027/801/non_2x/autumn-tree-watercolor-illustration-free-png.png
 * - flower: https://static.vecteezy.com/system/resources/previews/001/190/232/non_2x/flower-png.png
 * - sun: https://static.vecteezy.com/system/resources/previews/001/189/223/non_2x/sun-png.png
 * - leaf: https://static.vecteezy.com/system/resources/previews/009/342/562/non_2x/autumn-leaf-clipart-design-illustration-free-png.png
 * - snowflake: https://static.vecteezy.com/system/resources/previews/001/194/635/non_2x/snowflake-png.png
 *
 */

import beads.*;
//import processing.sound.*;
import java.util.Arrays; 
import controlP5.*;

AudioContext ac;

ControlP5 cp5;
//for sliders:
//int season = 0;

Table summer_xy;
Table autumn_xy;
Table winter_xy;
Table spring_xy;

PImage sun_img;
PImage leaf_img;
PImage snowflake_img;
PImage flower_img;

boolean is_summer;
boolean is_autumn;
boolean is_winter;
boolean is_spring;



color peach = color(245, 101, 101);
color lightPeach = color(245, 163, 163);

void setup() {
  size(1300, 700);
  ac = new AudioContext();
  cp5 = new ControlP5(this);
  
  //===INITIALISE FONT SETTINGS ===
  PFont p = createFont("Lato-Regular.ttf", 36); 
  ControlFont font = new ControlFont(p); // Initialise Font Settings
  cp5.setFont(font);
  //textFont(font);
  //=== END FONT SETTINGS ===
  
  //=== LOAD TABLES ===
  //the eif-research.feit.uts.edu.au websites are down right now so no data can be retrieved
  //summer_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2022-01-14T08%3A00&rToDate=2022-01-16T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //spring_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2021-10-15T08%3A00&rToDate=2021-10-17T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //autumn_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2022-04-15T08%3A00&rToDate=2022-04-17T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //winter_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2022-07-15T08%3A00&rToDate=2022-07-17T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //=== END LOAD TABLES ===

  //=== LOAD IMAGES ===
  sun_img = loadImage("vecteezy_sun.png");
  leaf_img = loadImage("vecteezy_leaf.png");
  snowflake_img = loadImage("vecteezy_snowflake.png");
  flower_img = loadImage("vecteezy_flower.png");
  imageMode(CENTER);
  //=== END LOAD IMAGES ===

  //=== BUTTON BAR ===
  ButtonBar b = cp5.addButtonBar("bar")
    .setPosition(0, 0)
    .setSize(width, height/10)
    .addItems(split("a b c d e", " "))
    //.setFont(p)  
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;
  println(b.getItem("a"));
  b.changeItem("a", "text", "WELCOME");
  b.changeItem("b", "text", "SUMMER");
  b.changeItem("c", "text", "AUTUMN");
  b.changeItem("d", "text", "WINTER");
  b.changeItem("e", "text", "SPRING");
  //=== END BUTTON BAR ===

  //=== CHECKS ===
  //boolean initial values
  println("sum; ", is_summer);
  println("aut; ", is_autumn);
  println("win; ", is_winter);
  println("spr; ", is_spring);

  //hover over buttons
  //b.onMove(new CallbackListener() {
  //  public void controlEvent(CallbackEvent ev) {
  //    ButtonBar bar = (ButtonBar)ev.getController();
  //    println("hovered! ", bar.hover()); //prints to command when hovering on buttons
  //  }
  //}
  //);
}

void draw() {
  background(0);

  //=== IMGS ===
  // if img exists and boolean flag for season is True, load img
  if (sun_img != null && is_summer == true) {
    image(sun_img, width/2, height/2, width/5, height/3);
  } else if (leaf_img != null && is_autumn  == true) {
    image(leaf_img, width/2, height/2, width/8, height/3);
  } else if (snowflake_img != null && is_winter  == true) {
    image(snowflake_img, width/2, height/2, width/6, height/3);
  } else if (flower_img != null && is_spring  == true) {
    image(flower_img, width/2, height/2, width/5, height/3);
  }
  //=== END IMGS ===
}

void bar(int n) {
  println("bar clicked, item-value:", n);
  if (n == 1) {
    is_summer = true;
    is_autumn = false;
    is_winter = false;
    is_spring = false;
    println("It's now summer: ", is_summer);
  } else if (n == 2) {
    is_summer = false;
    is_autumn = true;
    is_winter = false;
    is_spring = false;
    println("It's now autumn: ", is_autumn);
  } else if (n == 3) {
    is_summer = false;
    is_autumn = false;
    is_winter = true;
    is_spring = false;
    println("It's now winter: ", is_winter);
  } else if (n == 4) {
    is_summer = false;
    is_autumn = false;
    is_winter = false;
    is_spring = true;
    println("It's now spring: ", is_spring);
  } else {
    is_summer = false;
    is_autumn = false;
    is_winter = false;
    is_spring = false;
    println("Welcome!");
  }
}

//FOR NOW: when a key is pressed, change the season
//This will be changed to when a slider value == value, change season
void keyPressed() {
  if (key == '1') {
    bar(1);
    //is_summer = true;
    //is_autumn = false;
    //is_winter = false;
    //is_spring = false;
    //println("It's now summer: ", is_summer);
  } else if (key == '2') {
    bar(2);
    //is_summer = false;
    //is_autumn = true;
    //is_winter = false;
    //is_spring = false;
    //println("It's now autumn: ", is_autumn);
  } else if (key == '3') {
    bar(3);
    //is_summer = false;
    //is_autumn = false;
    //is_winter = true;
    //is_spring = false;
    //println("It's now winter: ", is_winter);
  } else if (key == '4') {
    bar(4); 
    //is_summer = false;
    //is_autumn = false;
    //is_winter = false;
    //is_spring = true;
    //println("It's now spring: ", is_spring);
  }
}

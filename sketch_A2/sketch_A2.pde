import beads.*;
import java.util.Arrays; 
import controlP5.*;

ControlP5 cp5;
AudioContext ac;

Table summer;
Table spring;
Table autumn;
Table winter;


void setup() {
  size(1300, 700);
  ac = new AudioContext();
  
  //=== LOAD TABLES ===
  summer = loadTable("put link here", "csv");
  spring = loadTable("put link here", "csv");
  autumn = loadTable("put link here", "csv");
  winter = loadTable("put link here", "csv");
}

void draw() {
  background(203);
  
}

Man[] men= new Man[100];

String[] origine = { 
  "europeen", "asiatique", "africain",
}; 
String[] profession = { 
  "ouvrier", "ouvrierwounded", "ouvrierapoil", "ouvriersyndic", "ouvrier", "cadre", "cadrex", "designer", "designerx"
}; 
int[] happiness = {
  1, 2,
};

void setup() {
  size(displayWidth, displayHeight);

  for (int v=0; v<100; v++) {
    men[v] = new Man((int)random(width), (int)random(height), origine[(int)random(3)], profession[(int)random(profession.length)], happiness[(int)random(2)]);
  }
}

void draw() {
  for (int v=0; v<100; v++) {
    men[v].draw();
  }
}


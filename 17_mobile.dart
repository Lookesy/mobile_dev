class BeeElephant {
  int bee;
  int elephant;

  BeeElephant(this.bee, this.elephant);

  bool fly() {
    return bee >= elephant;
  }

  String trumpet() {
    return elephant > bee ? "tu-tu-doo-doo!" : "wzzzzz";
  }

  void eat(String meal, int value) {
    if(meal == "nectar") {
      bee += value;
      elephant -= value;
    }
    else {
      bee -= value;
      elephant += value;
    }
    if(bee > 100) bee = 100;
    if(elephant > 100) elephant = 100;
    if(bee < 0) bee = 0;
    if(elephant < 0) elephant = 0;
  }

  List getParts() {
    return [bee, elephant];
  }
}

void main() {
  BeeElephant beeElephant = BeeElephant(50, 50);

  beeElephant.eat("nectar", 20);
  print(beeElephant.getParts());

  print(beeElephant.fly());

  print(beeElephant.trumpet());
}
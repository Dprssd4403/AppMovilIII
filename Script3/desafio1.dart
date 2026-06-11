void main() {
  String adn = "AATTGGCCAX";
  int countA = 0, countT = 0;
  int countC = 0, countG = 0;
  bool mutacion = false;

  for (int i = 0; i < adn.length; i++) {
    if (adn[i] == 'A') {
      countA++;
    } else if (adn[i] == 'T') {
      countT++;
    } else if (adn[i] == 'C') {
      countC++;
    } else if (adn[i] == 'G') {
      countG++;
    } else {
      mutacion = true;
    }
  }

  if (mutacion == true) {
    print("ADN MUTADO");
  } else if (countA == countT && countC == countG) {
    print("ADN COMPATIBLE");
  } else {
    print("ADN ALIENIGENA");
  }
}

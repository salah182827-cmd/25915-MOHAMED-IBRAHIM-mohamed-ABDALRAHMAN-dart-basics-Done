// Student: Mohamed abdalarahman mohamed ibrahim
// Reg no: 25925
const String regNo = '25915';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// B2
int countVowels(String text) {
  // by mam
  text = text.toLowerCase();
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if ('aeiou'.contains(text[i])) {
      count++;
    }
  }
  return count;
}

// B3
String initials(String fullName) {
  // by mam
  String result = '';

  for (String name in fullName.split(' ')) {
    if (name.isNotEmpty) {
      result += name[0].toUpperCase() + '.';
    }
  }
  return result;
}

// C5
void drawTriangle(int height) {
  // by MKG
  for (int i = 1; i <= height; i++) {
    String spaces = ' ' * (height - i);
    String symbol = i % 2 == 0 ? '#' : '*';
    print(spaces + symbol * i);
  }
}

// D2
int momoFee(int amount) {
  // by MKG
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

String maskPhone(String phone) {
  // by mam
  if (phone.length != 10) {
    return 'INVALID';
  }
  return phone.substring(0, 3) +
      '*****' + phone.substring(8);
}

void main() {
  // by mam
  print('Reg no: $regNo | D = $d | T = $t');

  String name = 'Mohamed abdalrahman mohamed ibrahim';
  print('$name has ${countVowels(name)} vowels');

  print(initials(name));
  print(initials(' mam '));
  print(initials(' '));

  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  int i = 1;
  int total = 0;
  String phone = '0795418179';

  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    total += fee;

    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');

    i++;
  }

  print('Total fees: $total RWF');
}

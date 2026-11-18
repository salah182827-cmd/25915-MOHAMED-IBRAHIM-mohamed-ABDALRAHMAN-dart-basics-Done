// Student: Mohamed abdalrahman mohamed ibrahim
// Reg no: 25915
const String regNo = '25915';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// B2
int countVowels(String text) {
  // by MKG
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

void main() {
  // by mam
  print('Reg no: $regNo | D = $d | T = $t');

  String name = 'Mohamed abdalrahman mohamed ibrahim';
  print('$name has ${countVowels(name)} vowels');

  print(initials(name));
  print(initials(' mam '));
  print(initials(' '));
}

//Future<void> prepareFood() async{
 // print('Customer ordered food...');
//  await Future.delayed(Duration(seconds: 3));
//  print('Food is ready!');
//}

//void main() async{
//  await prepareFood();
//  print('Customer starts eating.');
//}



//Future<String> getFavoriteColor() async{
//  await Future.delayed(Duration(seconds: 2));
//  return 'White';
//}

//void main() async {
//  String color = await getFavoriteColor();
//  print('My favorite color is $color');
//}



//Future<String> login() async {
//  await Future.delayed(Duration(seconds: 3));
//  return 'Welcome Ahmad';
//}

//void main() async{
//  String message = await login();
//  print(message);
//}



Future<String> getCountry() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Nigeria';
}

Future<int> getYear() async {
  await Future.delayed(Duration(seconds: 1));
  return 2026;
}

void main() async {
  var results = await Future.wait([
    getCountry(),
    getYear(),
  ]);
  print(results);
}
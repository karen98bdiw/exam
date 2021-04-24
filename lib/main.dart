import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//VERBAL PART
//1.Differentiate between named parameters and positional parameters in Dart.
//In case of positional parameters we give values to those parameters by their positions in
//argument lists,in case of named parametres we can give values to them by theit names
//positional parameters must be before named parameters in arguments list.
//also positionals not optional argument are required by default,we can make optional by wrapping
//in the [];
//
//2.Explain Futures in Dart.
//In dart future is a object which represent the values of the operations the executions of which
//cant take some time.
//And with future we can make an operation which will work asynchronously
//and its  result can be returned delayed ,after some time.
//We can run future  and wait for his result which can be an future result or an error.
//Future represent a value of an operation the execution of which will take some time.
//
//3.Explain async, await in Dart.
//In dart we use async await keywords to represent asynchronous functions.
// Adding async keyword to function  will mean that our function has return type future.
// .We can use await keyword inside a function marked with
//async keyword(and only there) and mark the opperation which execution can take some time and we
//can wait for his value.
//
//4.What are the differences of Single subscription streams and Broadcast streams?
//Single subscription streams can have only one listener and will generate events only
//if stream has listeners,and will stop work if streams have no listener.,
//Unlike this broadcast streams can have an multiply listeners and its work doestn depend on
//the number of listeners.
//Also we can not subscrube to single subscription twice ,even  if the first subscription is canceled
//
//5.What does "non-nullable by default" mean in Dart?
//This meas that value of variable of non-nullable variable can not be null
//
//6.What's the difference between async and async* in Dart?
//The function marked by async will return a future we can wait for his delayed opperations
//and then return a value.
//Unlike this, function marks async* return a stream that can return many delayed values per time.
//that mean that unlike future we dont have to await to end of all asynchronous operations for
//using his values and we able to start use each value by they returning(yeald);
//exp.` we make async  opperation one time emit his value and make second and etc putting that values in stream.
//
//7.What is the difference between "main()" and "runApp()" functions in Flutter?
//The main function is a start point for our dart or flutter project,this is the function
//that will call first by are program executor.The runApp function is a function
//that will return a root widget for our flutter application that will attached to screen
//after app is loaded.
//
//8.Differentiate StatelessWidget and StatefulWidget?
//
//Statelsess widget is a immutable widget that don't have a state and cannot reflect to his
//data changing,it will drow once and will not change, because there is no way to call his
//build method since widget is builded once.For making a changes we have to destory and recreate
//ne instance of widget.
//Stateful widget has a attached state to him and he can reflect to that state
//data changing  and call his build method to redraw his layout.
//
//9.Differentiate between Hot Restart and Hot Reload?
//
//Hot restart will destroy and return to his starting value all states of our application
//and it will build entire application again.
//Unlike this hot restart will inject new dart code to already running dart code
//and we will able to see our changes immediately.
//
//10.Explain Stateful Widget Lifecycle in details.
//1.After calling constructor  of stateful widget the createState method will be called
//that will create state object for our widget and after will gived a build context to our widget,the
//properyy mounted will set to true and this mean that our state is inserted to tree.
//2.After create state will called init state method,this function will
//calls only once.
//3.After calling init state will be called didChangeDependencie and this
// is also calls after changing the object our widget depends on․
//4.After didChangeDependencies will be called build method.
//this method will be called after every setState or dudUpdateWidget called
//and it will redraw our widget with new or old data from state.
//5.didWidgetUpdate widget calls if the paretn widget is changes and child needs to
//rebuild ,it will call rebuild method and returns old instance of widget.
//6.deactive mehtod calls when the widget is removed from tree.
//7.dispose is called when the state of widget is removed from tree.

//CODING PART
//2.    rep(1927); call this)
//3 f() call this;
void main() {
  runApp(MyApp());
}

String endWords(String pos) {
  switch (pos) {
    case "1":
      return "one";
      break;
    case "2":
      return "two";
      break;
    case "3":
      return "three";
      break;
    case "4":
      return "four";
      break;
    case "5":
      return "five";
      break;
    case "6":
      return "six";
      break;
    case "7":
      return "seven";
      break;
    case "8":
      return "eight";
      break;
    case "9":
      return "nine";
      break;
    default:
      "non";
  }
}

String endWordsInTan(String pos) {
  switch (pos) {
    case "1":
      return "one";
      break;
    case "2":
      return "twenty";
      break;
    case "3":
      return "thirty";
      break;
    case "4":
      return "fifty";
      break;
    case "5":
      return "fourty";
      break;
    case "6":
      return "sixty";
      break;
    case "7":
      return "seventy";
      break;
    case "8":
      return "eightty";
      break;
    case "9":
      return "ninety";
      break;
    default:
      "non";
  }
}

String tan(String t) {
  switch (t) {
    case "11":
      return "eleven";
      break;
    case "12":
      return "tweleve";
      break;
    case "13":
      return "threteen";
      break;
    case "14":
      return "fourtheen";
      break;
    default:
      return "տասնավորը անգլով!!!";
  }
}

String rep(int n) {
  var a = ["", "", "ty", "houndred", "thousand"];
  var str = n.toString();

  var count = str.length;

  var temp = "";

  for (var i = 0; i < str.length; i++) {
    if (str[i] == "0") {
      count--;
      continue;
    }
    if (count == 2 && str[i] == "1") {
      temp = temp + " " + tan(str[i] + str[i + 1]);
      break;
    }

    if (count == 2) {
      temp += " " + endWordsInTan(str[i]) + " ";
      count--;
      continue;
    }

    temp = temp + " " + endWords(str[i]) + " " + a[count];
    count--;
  }
  print(temp);
}

void f() {
  print("""
    first will print sync futures 
    in our case first Future.sync with value 6
    sync debugPrint(7),
    and next syncrounous future that will print 9
    after will start print asyncrounous futures 
    by they delay ,in our case will prints microtasks
    that will print 5 and 8,
    after delayed functions by they delay;
  """);
  Future<void>.delayed(
      const Duration(seconds: 1), () => debugPrint(1.toString()));
  Future<void>.delayed(Duration.zero, () => debugPrint(2.toString()));
  Future<void>(() => debugPrint(3.toString()))
      .then<void>((_) => debugPrint(4.toString()));
  Future<void>.microtask(() => debugPrint(5.toString()));
  Future<void>.sync(() => debugPrint(6.toString()));
  debugPrint(7.toString());
  Future<void>.microtask(() => debugPrint(8.toString()));
  Future<void>.sync(() => debugPrint(9.toString()));
  Future<void>(() => debugPrint(10.toString()));
  Future<void>.delayed(
      const Duration(seconds: 1), () => debugPrint(12.toString()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // rep(1927);
    // f();
    print("this is called");
    bool checkerValue = false;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (c, i) => CheckboxListTile(
            title: Text("Something"),
            value: checkerValue,
            onChanged: (v) {
              setState(() {
                checkerValue = !checkerValue;
              });
            },
          ),
          itemCount: 8,
        ),
      ),
    );
  }
}

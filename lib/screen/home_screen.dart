import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)) {
                        return Colors.white;
                      }

                      return Colors.red;

                      return null;
                    }
                ),
                padding: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if(states.contains(MaterialState.pressed)) {
                      return EdgeInsets.all(100.0);
                    }
                  return EdgeInsets.all(20.0);
                })
              ),
              child: Text('ButtonStyle'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  // 메인 칼라
                  primary: Colors.red,
                  // 글자 및 애니메이션 색깔
                  onPrimary: Colors.black,
                  // 그림자 색깔
                  shadowColor: Colors.green,
                  elevation: 10.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(32.0),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 4.0,
                  )),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  primary: Colors.green,
              ),
              child: Text('OutLinedButton'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.brown,
              ),
              child: Text('TextButton'),
            )
          ],
        ),
      ),
    );
  }
}

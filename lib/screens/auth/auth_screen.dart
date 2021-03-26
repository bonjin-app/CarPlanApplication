import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController _emailEditingController ;

  bool isValidate = false;

  @override
  void initState() {
    _emailEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            child: Text(
              '다음',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
            onPressed: () {
              if(_emailEditingController.text.isEmpty) {
                isValidate = true;

              } else {
                isValidate = false;
              }
              setState(() {});
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '이메일을',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '입력해 주세요.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                autofocus: true,
                cursorColor: Colors.blueAccent,
                controller: _emailEditingController,
                decoration: InputDecoration(
                  hintText: 'abc1234@bonjin.co.kr',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: _emailEditingController.text.length > 0 ? IconButton(
                    icon: Icon(Icons.clear, color: Colors.grey,),
                    onPressed: () {
                      _emailEditingController.clear();
                      setState(() {});
                    },
                  ) : null,
                ),
                onChanged: (value) {
                  setState(() {});
                },
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              isValidate ? Text('❌ 이메일 형식이 맞지 않습니다.', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),) : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

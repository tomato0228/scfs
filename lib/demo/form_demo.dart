import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('注  册'),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black26,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => new RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('用户名: $username');
      debugPrint('密  码: $password');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('注册中......'),
          backgroundColor: Colors.orange,
        ),
      );
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validatorUsername(value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: '用户名',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: '密码',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('注  册', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(RegisterForm oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  TextFieldDemoState createState() => new TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value) {
//        debugPrint('输入: $value');
//      },
      onSubmitted: (value) {
        debugPrint('提交: $value');
      },
      decoration: InputDecoration(
        icon: Icon(
          Icons.account_circle,
          size: 40.0,
        ),
        labelText: '用户名',
        hintText: '请输入用户名或邮箱',
        //border: InputBorder.none,
        //border: OutlineInputBorder(),
        filled: true, //背景颜色
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    textEditingController.text = 'Hi ~';
    textEditingController.addListener(() {
      debugPrint('输入: ${textEditingController.text}');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(TextFieldDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

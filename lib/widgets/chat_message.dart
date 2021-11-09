import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String texto;
  final String id;

  const ChatMessage({
    Key key,
    @required this.texto,
    @required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.id == '123' ? _myMessage() : _notMyMessaje(),
    );
  }

  Widget _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(right: 5, bottom: 5, left: 50),
        padding: EdgeInsets.all(8),
        child: Text(this.texto, style: TextStyle(color: Colors.white)),
        decoration: BoxDecoration(
          color: Color(0xfF4D9EF6),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _notMyMessaje() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 50, bottom: 5, left: 5),
        padding: EdgeInsets.all(8),
        child: Text(this.texto, style: TextStyle(color: Colors.black87)),
        decoration: BoxDecoration(
          color: Color(0xffE4E5E8),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
} //

// ignore_for_file: prefer_const_constructors

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
          child: TextFormField(
            controller: textController,
            onChanged: (_) => EasyDebounce.debounce('textController',
                Duration(milliseconds: 2000), () => setState(() {})),
            obscureText: false,
            decoration: InputDecoration(
                labelText: 'mau belajar apa hari ini? >_<',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Color(0xFF92E0EB),
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

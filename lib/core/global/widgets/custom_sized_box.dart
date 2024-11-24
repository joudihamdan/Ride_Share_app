// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class sizedBox30 extends StatelessWidget {
  const sizedBox30({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
    );
  }
}

class sizedBox40 extends StatelessWidget {
  const sizedBox40({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 40,
    );
  }
}

class sizedBox50 extends StatelessWidget {
  const sizedBox50({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 50,
    );
  }
}

class sizedBox20 extends StatelessWidget {
  const sizedBox20({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
    );
  }
}

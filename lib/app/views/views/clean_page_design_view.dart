import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CleanPageDesignView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CleanPageDesignView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CleanPageDesignView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

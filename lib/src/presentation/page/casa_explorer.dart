import 'package:flutter/material.dart';

class CasaExplorer extends StatefulWidget {
  const CasaExplorer({super.key});

  @override
  State<CasaExplorer> createState() => _CasaExplorerState();
}

class _CasaExplorerState extends State<CasaExplorer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Casa Explorer"),
      ),
      body: Container(),
    );
  }
}

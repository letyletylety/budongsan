import 'package:budongsan/src/util/annotation.dart';
import 'package:flutter/material.dart';

@page
class FileBatchRenaming extends StatelessWidget {
  const FileBatchRenaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('파일명 일괄 변경'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('1231');
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        color: Colors.black54,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('파일 찾기'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

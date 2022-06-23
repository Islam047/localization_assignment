import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('flutter'.tr()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  color: Colors.green,
                  height: 40,
                  minWidth: 70,
                  onPressed: () {
                    context.setLocale(
                      const Locale('en', 'US'),
                    );
                  },
                  child: const Text('English'),
                ),

                MaterialButton(
                  color: Colors.red,
                  height: 40,
                  minWidth: 70,
                  onPressed: () {
                    context.setLocale(
                      const Locale('ko', 'KO'),
                    );
                  },
                  child: const Text('Korean'),
                ),

                MaterialButton(
                  color: Colors.yellow,
                  height: 40,
                  minWidth: 70,
                  onPressed: () {
                    context.setLocale(
                      const Locale('ja', 'JP'),
                    );
                  },
                  child: const Text('Japanese'),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}

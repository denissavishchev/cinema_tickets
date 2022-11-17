import 'package:flutter/material.dart';

import 'main_page.dart';

class SeatsPage extends StatelessWidget {
  const SeatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f3644),
      body: Column(
        children: [
          const SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: IconButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                              const MainPage())),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 20,
                      )),
                ),
                const Text('Select Seats', style: TextStyle(color: Colors.white, fontSize: 22),),
                const SizedBox(width: 45,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

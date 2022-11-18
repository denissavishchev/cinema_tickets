import 'package:cinema_tickets/seats_widget.dart';
import 'package:cinema_tickets/time_button.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

enum Time {
  one,
  two,
  three,
  four,
  five,
  six,
}

class SeatsPage extends StatefulWidget {
  const SeatsPage({Key? key}) : super(key: key);

  @override
  State<SeatsPage> createState() => _SeatsPageState();
}

class _SeatsPageState extends State<SeatsPage> {
  
  dynamic selectedTime;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f3644),
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
          Column(
            children: [
              const ScreenWidget(),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatsWidget(color: Colors.grey, seatNumber: 1,),
                  SeatsWidget(color: Color(0xfff2c94c), seatNumber: 2,),
                  SeatsWidget(color: Colors.white, seatNumber: 3,),
                  SeatsWidget(color: Colors.white, seatNumber: 4,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  const [
                  SeatsWidget(color: Colors.white, seatNumber: 5,),
                  SeatsWidget(color: Colors.white, seatNumber: 6,),
                  SeatsWidget(color: Colors.white, seatNumber: 7,),
                  SeatsWidget(color: Colors.white, seatNumber: 8,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatsWidget(color: Colors.white, seatNumber: 9,),
                  SeatsWidget(color: Colors.white, seatNumber: 10,),
                  SeatsWidget(color: Colors.white, seatNumber: 11,),
                  SeatsWidget(color: Colors.white, seatNumber: 12,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatsWidget(color: Colors.white, seatNumber: 13,),
                  SeatsWidget(color: Colors.white, seatNumber: 14,),
                  SeatsWidget(color: Colors.white, seatNumber: 15,),
                  SeatsWidget(color: Colors.white, seatNumber: 16,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatsWidget(color: Colors.white, seatNumber: 17,),
                  SeatsWidget(color: Colors.white, seatNumber: 18,),
                  SeatsWidget(color: Colors.white, seatNumber: 19,),
                  SeatsWidget(color: Colors.white, seatNumber: 20,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatsWidget(color: Colors.white, seatNumber: 21,),
                  SeatsWidget(color: Colors.white, seatNumber: 22,),
                  SeatsWidget(color: Colors.white, seatNumber: 23,),
                  SeatsWidget(color: Colors.white, seatNumber: 24,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatsWidget(color: Colors.white, seatNumber: 25,),
                  SeatsWidget(color: Colors.white, seatNumber: 26,),
                  SeatsWidget(color: Colors.white, seatNumber: 27,),
                  SeatsWidget(color: Colors.white, seatNumber: 28,),
                ],
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Icon(Icons.circle,color: Colors.grey,),
                  const SizedBox(width: 10,),
                  Text('Available', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18),),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.circle,color: Colors.white,),
                  const SizedBox(width: 10,),
                  Text('Reserved', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18),),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.circle,color: Color(0xfff2c94c),),
                  const SizedBox(width: 10,),
                  Text('Selected', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18),),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_back_ios_new, color: Colors.white,),
              Text('Today . Nov 11.2022', style: TextStyle(color: Colors.white, fontSize: 18),),
              Icon(Icons.arrow_forward_ios, color: Colors.white,),
            ],
          ),
          const SizedBox(height: 20,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TimeButton(
                      color: selectedTime == Time.one ? Color(0xfff2c94c) : Color(0xff0e2738),
                      onPress: ((){
                        setState(() {
                          selectedTime = Time.one;
                        });
                      }),
                      child: Text('08.30', style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,
                          color: selectedTime == Time.one ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.two ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.two;
                      });
                    }),
                    child: Text('11.00', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: selectedTime == Time.two ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.three ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.three;
                      });
                    }),
                    child: Text('14.30', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: selectedTime == Time.three ? Colors.black : Colors.white),), ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TimeButton(
                    color: selectedTime == Time.four ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.four;
                      });
                    }),
                    child: Text('17.30', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: selectedTime == Time.four ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.five ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.five;
                      });
                    }),
                    child: Text('20.00', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: selectedTime == Time.five ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.six ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.six;
                      });
                    }),
                    child: Text('22.30', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: selectedTime == Time.six ? Colors.black : Colors.white),), ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                color: Colors.white.withOpacity(0.8),
                width: MediaQuery.of(context).size.width,
                child: TimeButton(color: const Color(0xff183346),
                  onPress: () { },
                  child: Center(child: const Text('Buy Ticket (2)   \$9.84', style: TextStyle(color: Color(0xffefc64c), fontSize: 22),)),

                ),
              )),
        ],
      ),
    );
  }
}

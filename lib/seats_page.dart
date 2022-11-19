import 'dart:math';

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
  State<SeatsPage> createState() => SeatsPageState();
}

class SeatsPageState extends State<SeatsPage> {
  static int ticketCounter = 0;

  dynamic selectedTime;

  List seats = [];


  @override
  void initState() {
    for (int i = 0; i < 13; i++){
      int random(int min, int max) {
        return min + Random().nextInt(max - min);
      }
      seats.add(random(1, 29));
    }
    // print(seats);
    super.initState();
  }
  
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
                const Text('Select Seats', style: TextStyle(
                  color: Colors.white, fontSize: 22, fontFamily: 'Garamond',),),
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
                children: [
                  SeatsWidget(color: seats.contains(1) ? Colors.grey : Colors.white, seatNumber: 1,),
                  SeatsWidget(color: seats.contains(2) ? Colors.grey : Colors.white, seatNumber: 2,),
                  SeatsWidget(color: seats.contains(3) ? Colors.grey : Colors.white, seatNumber: 3,),
                  SeatsWidget(color: seats.contains(4) ? Colors.grey : Colors.white, seatNumber: 4,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SeatsWidget(color: seats.contains(5) ? Colors.grey : Colors.white, seatNumber: 5,),
                  SeatsWidget(color: seats.contains(6) ? Colors.grey : Colors.white, seatNumber: 6,),
                  SeatsWidget(color: seats.contains(7) ? Colors.grey : Colors.white, seatNumber: 7,),
                  SeatsWidget(color: seats.contains(8) ? Colors.grey : Colors.white, seatNumber: 8,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SeatsWidget(color: seats.contains(9) ? Colors.grey : Colors.white, seatNumber: 9,),
                  SeatsWidget(color: seats.contains(10) ? Colors.grey : Colors.white, seatNumber: 10,),
                  SeatsWidget(color: seats.contains(11) ? Colors.grey : Colors.white, seatNumber: 11,),
                  SeatsWidget(color: seats.contains(12) ? Colors.grey : Colors.white, seatNumber: 12,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SeatsWidget(color: seats.contains(13) ? Colors.grey : Colors.white, seatNumber: 13,),
                  SeatsWidget(color: seats.contains(14) ? Colors.grey : Colors.white, seatNumber: 14,),
                  SeatsWidget(color: seats.contains(15) ? Colors.grey : Colors.white, seatNumber: 15,),
                  SeatsWidget(color: seats.contains(16) ? Colors.grey : Colors.white, seatNumber: 16,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SeatsWidget(color: seats.contains(17) ? Colors.grey : Colors.white, seatNumber: 17,),
                  SeatsWidget(color: seats.contains(18) ? Colors.grey : Colors.white, seatNumber: 18,),
                  SeatsWidget(color: seats.contains(19) ? Colors.grey : Colors.white, seatNumber: 19,),
                  SeatsWidget(color: seats.contains(20) ? Colors.grey : Colors.white, seatNumber: 20,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SeatsWidget(color: seats.contains(21) ? Colors.grey : Colors.white, seatNumber: 21,),
                  SeatsWidget(color: seats.contains(22) ? Colors.grey : Colors.white, seatNumber: 22,),
                  SeatsWidget(color: seats.contains(23) ? Colors.grey : Colors.white, seatNumber: 23,),
                  SeatsWidget(color: seats.contains(24) ? Colors.grey : Colors.white, seatNumber: 24,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SeatsWidget(color: seats.contains(25) ? Colors.grey : Colors.white, seatNumber: 25,),
                  SeatsWidget(color: seats.contains(26) ? Colors.grey : Colors.white, seatNumber: 26,),
                  SeatsWidget(color: seats.contains(27) ? Colors.grey : Colors.white, seatNumber: 27,),
                  SeatsWidget(color: seats.contains(28) ? Colors.grey : Colors.white, seatNumber: 28,),
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
                  const Icon(Icons.circle,color: Colors.white,),
                  const SizedBox(width: 10,),
                  Text('Available', style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 18, fontFamily: 'Garamond',),),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.circle,color: Colors.grey,),
                  const SizedBox(width: 10,),
                  Text('Reserved', style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 18, fontFamily: 'Garamond',),),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.circle,color: Color(0xfff2c94c),),
                  const SizedBox(width: 10,),
                  Text('Selected', style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 18, fontFamily: 'Garamond',),),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_back_ios_new, color: Colors.white,),
              Text('Today . Nov 11.2022', style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: 'Garamond',),),
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
                          fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Garamond',
                          color: selectedTime == Time.one ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.two ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.two;
                      });
                    }),
                    child: Text('11.00', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Garamond',
                        color: selectedTime == Time.two ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.three ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.three;
                      });
                    }),
                    child: Text('14.30', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Garamond',
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
                        fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Garamond',
                        color: selectedTime == Time.four ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.five ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.five;
                      });
                    }),
                    child: Text('20.00', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Garamond',
                        color: selectedTime == Time.five ? Colors.black : Colors.white),), ),
                  TimeButton(
                    color: selectedTime == Time.six ? Color(0xfff2c94c) : Color(0xff0e2738),
                    onPress: ((){
                      setState(() {
                        selectedTime = Time.six;
                      });
                    }),
                    child: Text('22.30', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Garamond',
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
                  child: const Center(child: Text(
                    'Buy Ticket',
                    style: TextStyle(color: Color(0xffefc64c), fontSize: 22, fontFamily: 'Garamond'),)),

                ),
              )),
        ],
      ),
    );
  }
}

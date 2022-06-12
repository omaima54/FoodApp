import 'package:flutter/material.dart';


class SliderViwe extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final Map<String,String> list;
  final int currentindex;

  const SliderViwe({Key? key, required this.list, required this.currentindex }) : super(key: key);

  @override
  State<SliderViwe> createState() => _SliderViweState();
}

class _SliderViweState extends State<SliderViwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset('${widget.list["image"]}',),
            const SizedBox(height: 50,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  widget.list.length, (index) => buildControlPageView(index)),
            ), 


            const SizedBox(height: 40),
             Text(
              '${widget.list['title']}',
              style: const TextStyle(fontSize: 28, color: Color(0xff4A4B4D)),
            ),
            const SizedBox(height: 40),
             Text(
              '${widget.list['text']}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: Color(0xff7C7D7E)),
            ),
         
          ],
        ),
      ),
    );
    
  }
   AnimatedContainer buildControlPageView(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      duration: const Duration(milliseconds: 500),
      width:  6,
      height: 6,
      decoration: BoxDecoration(
          color: widget.currentindex == index ? const Color(0xffE96718):const Color(0xffCCD2DF),
          borderRadius: BorderRadius.circular(2.5)),
    );
  }
  
}

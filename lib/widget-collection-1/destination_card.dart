import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)));
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(),
            child: Image.network(
              "https://picsum.photos/300/200",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 140,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "11 Dreamy  To Stay in London for",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  style: TextStyle(fontSize: 17),
                ),
                Divider(),
                Row(
                  children: [
                    ElevatedButton( 
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: Text("Direction"),
                    ),
                    Spacer(),
                    Text(
                      "13 min - 1 km",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

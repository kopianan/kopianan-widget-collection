import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "EVENT INVITE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400],
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: const [
                  Text(
                    "26",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text("JAN"),
                ],
              ),
            ),
            title: Text("Growing Passive Income"),
            subtitle: Text("Wednesday, March 25th"),
          ),
          SizedBox(height: 10),
          Row(
            children: List.generate(
              4,
              (index) => Row(
                children: [CircleAvatar(), SizedBox(width: 5)],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text("Accept Invite"),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  side: MaterialStateProperty.all(BorderSide(width: 2)),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Reschedule"),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[400])),
              )
            ],
          )
        ],
      ),
    );
  }
}

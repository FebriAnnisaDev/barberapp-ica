import 'package:flutter/material.dart';

class ReviewPages extends StatefulWidget {
  @override
  _ReviewPagesState createState() => _ReviewPagesState();
}

class _ReviewPagesState extends State<ReviewPages> {
  List<Map> customerreview = [
    {
      "profilepictureurl":
          "https://images.unsplash.com/photo-1619203406102-a706bfdc599a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
              "",
      "name": "Ryan Rotwaiss",
      "date": "A month ago",
      "comment":
          "Man!! Getting a haircut from the owner/his friends is always a pleasant experience, such a well done cut! Tysm."
    },
    {
      "profilepictureurl":
          "https://images.unsplash.com/photo-1619223136449-9a1e502eed25?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Nnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "name": "Jack Lieber",
      "date": "2 months ago",
      "comment": "Great services! I highly recommend!!"
    },
    {
      "profilepictureurl":
          "https://images.unsplash.com/photo-1523215108660-3fdf7932d7a5?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "name": "G. Jewell",
      "date": "2 months ago",
      "comment":
          "The barbers are friendly, highly skilled, and professional. 5 STARS!"
    },
    {
      "profilepictureurl":
          "https://images.unsplash.com/photo-1485217988980-11786ced9454?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "name": "Flore Titania",
      "date": "2 months ago",
      "comment": "Luvvv it❤"
    },
    {
      "profilepictureurl":
          "https://images.unsplash.com/photo-1619200065231-c410a5aacbd1?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "name": "Hannah Davis",
      "date": "3 months ago",
      "comment":
          "Their attention to every little detail just never fails to amaze me."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: customerreview.length,
        itemBuilder: (context, index) {
          var item = customerreview[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    border: Border.all(width: 8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  width: double.infinity,
                  height: 170,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 60),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              item["profilepictureurl"],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            Text(
                              item["name"],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  item["date"],
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[400]),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.yellow[800],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.yellow[800],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.yellow[800],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.yellow[800],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.yellow[800],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 200,
                              child: Text(
                                item["comment"],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[400],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

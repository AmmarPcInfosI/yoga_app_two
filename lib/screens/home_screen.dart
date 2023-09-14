import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yoga_app_two/models/yoga.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Yoga> yoga = [
    Yoga(
        yogaType: 'Vinyasa yoga',
        yogaImg:
            'https://images.pexels.com/photos/2294363/pexels-photo-2294363.jpeg?auto=compress&cs=tinysrgb&w=400'),
    Yoga(
        yogaType: 'Hatha yoga',
        yogaImg:
            'https://images.pexels.com/photos/3772502/pexels-photo-3772502.jpeg?auto=compress&cs=tinysrgb&w=400'),
    Yoga(
        yogaType: 'Iyengar yoga',
        yogaImg:
            'https://images.pexels.com/photos/1191804/pexels-photo-1191804.jpeg?auto=compress&cs=tinysrgb&w=400'),
    Yoga(
        yogaType: 'Kundalini yoga',
        yogaImg:
            'https://images.pexels.com/photos/1346163/pexels-photo-1346163.jpeg?auto=compress&cs=tinysrgb&w=400')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 30,
          )
        ],
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 220,
                margin: EdgeInsets.only(top: 10),
                child: Center(
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Image border
                        child: SizedBox.fromSize(
                          size: Size(double.infinity, 220), // Image radius
                          child: Image.asset('images/yogatwo.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "Basic Yoga For Begginers",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        itemSize: 18,
                        glowRadius: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )
                    ],
                  ),
                  Text(
                    '125 reviews',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              ),
              Container(
                margin: EdgeInsetsDirectional.symmetric(vertical: 15),
                child: Text(
                  'Two general theories exist on the origins of yoga. The linear model holds that yoga originated in the Vedic period, as reflected in the Vedic textual corpus, and influenced Buddhism; according to author Edward Fitzpatrick Crangle, this model is mainly supported by Hindu scholars. According to the synthesis model, yoga is a synthesis of non-Vedic and Vedic elements; this model is favoured in Western scholarship.',
                  style: TextStyle(color: Colors.black87, fontSize: 12),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 3),
                        child: Text(
                          'Level',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Text(
                        '01',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 3),
                        child: Text(
                          'Week',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Text(
                        ' 01',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm_add_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 3),
                        child: Text(
                          'Mins',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Text(
                        '19',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsetsDirectional.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Schedule",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('See All',
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.3),
                  itemCount: yoga.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                offset: Offset(1, 1), // Shadow position
                              ),
                            ]),
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                yoga[index].yogaImg!,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 4,
                          left: 10,
                          child: Text(
                            yoga[index].yogaType!,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))
                    ]);
                  })
            ],
          ),
        )),
      ),
    );
  }
}

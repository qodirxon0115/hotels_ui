
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
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #headr
            Container(
              height: 260,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Best Hotels Ever",
                      style: TextStyle(
                          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    const SizedBox(height: 30,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.grey,),
                            hintText: "Search for hotels...",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),

                          ),
                        ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),

            // #body

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800], fontSize: 20),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel 2"),
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel 3"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel 4"),
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Text("Airport Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800], fontSize: 20),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel 2"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel 3"),
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel 4"),
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel 5"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image,title}){
    return AspectRatio(
        aspectRatio: 1.4/1,
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ]
              )
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Text(title,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20),),

                   Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red, size: 20,)
                        ],
                      ),
                   )
                ],
              ),
            ),
          ),
        ),
    );
  }
}

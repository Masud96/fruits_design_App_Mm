import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i=1; i<=3; i++)
                Image.asset('assets/images/deal$i.jpg',height: 200,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,)
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(10),

            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  
                ),
                
              ]
            ),
            
            child: GridView.count(
              childAspectRatio: 1,

                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                shrinkWrap: true,
                children: [
                  for(int i=1; i<9; i++)

                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 230, 177),
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    
                    child: Image.asset('assets/images/$i.png'),

                  )

                ],

            ),
          )
        ],
      ),
    );
  }
}

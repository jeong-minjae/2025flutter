import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text with Coulm and row'),
      ),
      body: Center(
        child:Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email_rounded
                  ),
                  
                  ),
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email_rounded
                  ),
                  ),
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email_rounded
                  ),
                  )

                
              
                  
              ],
              
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'candy'
                    ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                    'james'
                    ),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ruby'
                      ),
                  ),
              ],
            ),

          ],

          
          )
          
          
         ,),
    );
  }
}
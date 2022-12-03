import 'package:flutter/material.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              color: Color(0xff5038bc),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  radius: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Farkhan S',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'NPM  2106709125',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          _detailsHeader('Bio'),
          _detailContent('Ingin menikmati hidup'),
          _detailsHeader('Motivasi'),
          _detailContent('Mobdev cukup menarik di mata saya, meskipun terkadang rasanya nguli saat ngoding Flutter'),
        ],
      ),
    );
  }

  Container _detailContent(String content) {
    return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 13,
          ),
          alignment: Alignment.centerLeft,
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        );
  }

  Row _detailsHeader(String header) {
    return Row(
          children: [
            Container(
              color: const Color(0xff5038bc),
              height: 40,
              width: 12.5,
            ),
            Expanded(
              child: Container(
                color: const Color(0xFFFFD668),
                height: 40,
                padding: const EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  header,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
  }
}

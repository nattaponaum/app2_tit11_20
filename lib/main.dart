
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'nxttxp0n_',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),

      body: Column(
        children: [

          // รูปโปรไฟล์และจำนวนโพสต์
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage(
                    'assets/aumm.JPG',
                  ),
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text('โพสต์'),
                      ],
                    ),

                    Column(
                      children: const [
                        Text(
                          '135M',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text('ผู้ติดตาม'),
                      ],
                    ),

                    Column(
                      children: const [
                        Text(
                          '1K',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text('กำลังติดตาม'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // ชื่อและแคปชัน
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '顾君宸',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('รักตี๋' ),
                  Text('ไม่ทิ้งตี๋'),

                ],
              ),
            ),
          ),

          const SizedBox(height: 15),

          // ปุ่มติดตามและปุ่มข้อความ
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('ติดตาม'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('ข้อความ'),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          // ไอคอนโพสต์และแท็ก
          const Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.grid_on,
                size: 25,
              ),
              Icon(
                Icons.person_pin_outlined,
                size: 25,
              ),
            ],
          ),

          const SizedBox(height: 10),

          // รูปภาพประกอบ 3 ภาพจากอินเทอร์เน็ต
          Row(
            children: [
              Expanded(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmH7z-BCFLdd37wzWdmeHHjXd0HG6xUh1kwTom53EotkC8Nw1nHt9oXR0&s=10',
                  fit: BoxFit.cover,
                  height: 180,
                ),
              ),

              Expanded(
                child: Image.network(
                  'https://s.isanook.com/mv/0/ui/37/188006/1.jpg',
                  fit: BoxFit.cover,
                  height: 180,
                ),
              ),

              Expanded(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpFt0PFoqwkIFObywdFBMLPByYTa8kbMnb1ApbT0lJgw&s=10',
                  fit: BoxFit.cover,
                  height: 180,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

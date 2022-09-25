import 'package:bathra_hackathon/screens/pose_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChallengeScreen extends StatefulWidget {
  static const String id = 'challange_screen';

  final List<CameraDescription> cameras;
  ChallengeScreen(this.cameras);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Logo_1.png'),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('images/blot.png'),
                ),
                Text(
                  'تحدي الرفع الجانبي',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.repeat_outlined,
                      color: Color(0xff2FCAA5),
                    ),
                    Text('٣٠ عدة')
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xff2FCAA5)),
                      shape: BoxShape.rectangle,
                      color: Color(0xffEEFBF8)),
                  child: Text(
                    'مارس تمرين الرفع الجانبي ٥ مرات قبل إنقضاء مدة التحدي وستحصل على بذرة البلوط النادرة تمتاز شجرة البلوط بشكلها الجميل وعمرها الطويل مما يضيف طابع جمالي على مزرعتك. حتى الآن لم يحقق الا ٣٠٪ من المستخدمين هذا التحدي.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff2FCAA5)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: (() async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PoseScreen(
                          cameras: widget.cameras,
                          title: 'posenet',
                        ),
                      ),
                    );
                  }),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff2FCAA5)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ابدأ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                listTileWidget(
                    'تعرف على تمرين الضغط الجانبي',
                    'إضغط هنا لمشاهدة الشرح',
                    'images/y.png',
                    Color(0xff2FCAA5)),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'أنجزوا التحدي',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      listTileWidget('نجود', 'أنجزت التحدي في ٣ دقائق',
                          'images/njod.png', Colors.black),
                      listTileWidget('مها', 'أنجزت التحدي في  ٧ دقائق',
                          'images/maha.png', Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listTileWidget(
      String title, String desc, String imageSr, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        elevation: 0,
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: color, width: 0.5)),
          tileColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          leading: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.5, color: Color(0xff2FCAA5))),
              child: Image.asset(imageSr)),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(desc),
        ),
      ),
    );
  }
}

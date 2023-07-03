import 'package:flutter/material.dart';
import 'package:kelompokmbl/const.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});
  

  @override
  
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
//   File? image;

// Future openCamera() async {
//   final pickedImage =
//       await ImagePicker().pickImage(source: ImageSource.camera);
//   image = File(pickedImage!.path);
// }

// Future openGallery() async {
//   final imageGallery =
//       await ImagePicker().pickImage(source: ImageSource.gallery);
//   image = File(imageGallery!.path);
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  // image != null ? Align(
                  //   alignment: FractionalOffset.center,
                  //   child: ClipOval(
                  //     child: Image.file(image!, width: 100, height: 100, fit: BoxFit.cover,),
                  //   )
                  // ) :
                  Align(
                    alignment: FractionalOffset.center,
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/profile.jpeg'),
                      maxRadius: 45,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 125,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: aPrimaryColor),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Full Name"),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Phone No"),
                        prefixIcon: Icon(Icons.phone_outlined),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.key),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      // color: Colors.black,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            side: BorderSide.none,
                            shape: StadiumBorder()),
                        onPressed: () {},
                        child: Text(
                          "Saved",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

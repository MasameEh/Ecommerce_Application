import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/view/widgets/defaultextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    HomeControllerImpl controller = Get.put(HomeControllerImpl());
    return Scaffold(
      body: ListView(
        children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                     Expanded(
                        child:
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search for products",
                            hintStyle: const TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            prefixIcon:  Icon(
                              Icons.search,
                              color: Colors.grey[600],
                              size: 30,
                            )
                          ),
                        )),
                    const SizedBox(width: 10,),
                    Container(
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: IconButton(
                          onPressed: () {
                            }, icon: Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.grey[600],
                          size: 30,
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Stack(
                  children: [
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(20),
                      ),
                        child: const ListTile(
                          title: Text("SUMMER BIG OFFER", style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text("CASHBACK 20%", style: TextStyle(fontSize: 30, color: Colors.white),),

                        ),
                      ),
                    Positioned(
                      top: -20,
                      right: -30,
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(160),
                        ),),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}

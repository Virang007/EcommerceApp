import 'package:britannia/Screens/common_widget/home_button.dart';
import 'package:britannia/Screens/constant/colors.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/Screens/sp_screens/home_screens/componerts/feature_btn.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
     color: lightGrey,
     width: context.screenWidth,
     height: context.screenHeight,
     child: SafeArea(
      child:Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                filled: true,
                border: InputBorder.none,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey)
              ),
            ),
          ),
          10.heightBox,    
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                   //brands show
              VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: SliderList.length, itemBuilder:(context,Index){
                return Image.asset(SliderList[Index],
                fit: BoxFit.fill,
                ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
              }),
               10.heightBox,
              // button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:List.generate(2, (index) => homeButton(
                  height: context.screenHeight*0.15,
                  width: context.screenWidth /2.5,
                  icon: index == 0 ? icTodaysDeal :icFlashDeal,
                  title: index == 0 ? todayDeal : flashsale 
              
                )),
              ),
              10.heightBox,
              
              //second SliderList
              VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                height: 100,
                enlargeCenterPage: true,
                itemCount: secondSliderList.length, itemBuilder:(context,Index){
                return Image.asset(secondSliderList[Index],
                fit: BoxFit.fill,
                ).box.margin(EdgeInsets.symmetric(horizontal: 8)).make();
              }),
              10.heightBox,
              // next vuttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:List.generate(3, (index) => homeButton(
                  height: context.screenHeight*0.10,
                  width: context.screenWidth /4,
                  icon: index == 0 ? icTopCategories :index == 1 ? icBrands :icTopSeller,
                  title: index == 0 ? topCategories :index == 1 ? brand :topSellers
              
              
                )),
              ),
              10.heightBox,
              //feuture catogory
              Align(
                alignment: Alignment.centerLeft,
                child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()
                ),
                10.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children:List.generate(3, (index) => Column(
                    children: [
                      featuredButton(icon: featuredImgList1[index],title: featuredTitleList1[index]),
                      10.heightBox,
                      featuredButton(icon: featuredImgList2[index],title: featuredTitleList2[index]),
                    ],
                  )),),
                ),
                 //feuture products
                 20.heightBox,
                 Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  color: redColor,
                  child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featuredProduct.text.white.size(18).fontFamily(semibold).make(),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:List.generate(6, (index) =>Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                              10.heightBox,
                              "Lapto 4Gb/6Gb".text.color(darkFontGrey).make(),
                               "\$600".text.color(redColor).fontFamily(bold).size(16).make()
                            ],
                          ).box.white.roundedSM.margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(8)).make()),
                        ),
                      )
                    ],
                  ),
                 ),

                 //thire swiper 
                  10.heightBox,
              
              //second SliderList
              VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                height: 100,
                enlargeCenterPage: true,
                itemCount: secondSliderList.length, itemBuilder:(context,Index){
                return Image.asset(secondSliderList[Index],
                fit: BoxFit.fill,
                ).box.margin(EdgeInsets.symmetric(horizontal: 8)).make();
              }),
              
              20.heightBox,
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                 gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                 mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 300),
                 itemBuilder:(context ,index){
                  return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP5,width: 200,height: 200, fit: BoxFit.cover,),
                              Spacer(),
                              "Lapto 4Gb/6Gb".text.color(darkFontGrey).make(),
                              10.heightBox,
                               "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                               10.heightBox
                            ],
                          ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make();
                 }
               )



                ],
              ),
            ),
          )

        ],
      ) ),
    );
  }
}
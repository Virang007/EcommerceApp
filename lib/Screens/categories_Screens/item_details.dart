import 'package:britannia/Screens/constant/colors.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:flutter/material.dart';

class itemDetaile extends StatelessWidget {
  final String? title;
  const itemDetaile({Key? key,required this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.share)),
           IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Column(
       
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //swiner
                    VxSwiper.builder(
                      itemCount: 3,
                      aspectRatio: 16/9,
                      height: 350,
                       itemBuilder:(context,index){
                        return Image.asset(imgFc5,width: double.infinity,fit: BoxFit.cover,);
                       }),
                       // title

                       10.heightBox,
                       title!.text.size(16).align(TextAlign.start).color(darkFontGrey).fontFamily(semibold).make(),
                       //reating start
                       10.heightBox,
                       VxRating(onRatingUpdate: (Value)=>{

                       },normalColor: textfieldGrey,selectionColor: golden,count: 5,size: 16,stepInt: true,),
                       8.heightBox,
                       "\$30,000".text.color(redColor).fontFamily(bold).size(18).make(),
                       10.heightBox,
                       Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "seller".text.color(darkFontGrey).fontFamily(semibold).make(),
                              5.heightBox,
                              "In house brands".text.fontFamily(semibold).color(fontGrey).size(16).make()
                              ],
                          )),
                          CircleAvatar(backgroundColor: lightGrey,
                          child: Icon(Icons.message_rounded,color: darkFontGrey,),
                          )
                        ],
                       ).box.height(70).roundedSM.padding(EdgeInsets.symmetric(horizontal: 8)).color(lightGrey).make(),
                       
                       //color categorys
                       15.heightBox,
                       Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Colors:".text.fontFamily(bold).color(fontGrey).make(),
                              ),
                              Row(
        
                                children: List.generate(3, (index) =>VxBox().size(35, 35).roundedFull.color(Vx.randomPrimaryColor).margin(EdgeInsets.symmetric(horizontal: 6)).make()),)
                            ],
                          )
                        ],
                       ),

                       // quantity row
                       15.heightBox,
                       Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quantity :".text.fontFamily(bold).color(fontGrey).make(),
                              ),
                              Row( 
                                children: [
                                  IconButton(onPressed: (){}, icon:Icon(Icons.remove)),
                                  8.widthBox,
                                  "0".text.size(16).fontFamily(bold).color(fontGrey).make(),
                                  8.widthBox,
                                  IconButton(onPressed: (){}, icon:Icon(Icons.add)),
                                  // "(0 available)".text.fontFamily(bold).color(darkFontGrey).make(),
                                ],
               
                              ),
                             
                            ],
                          ),
                          10.heightBox,
                           Row(
                                children: [
                                  SizedBox(
                                width: 100,
                                child: "Total :".text.fontFamily(bold).color(fontGrey).make(),
                              ),
                              "\$0.00".text.size(16).color(redColor).make()
                                ],
                              ),
                              // box.height(40).roundedSM.padding(EdgeInsets.symmetric(horizontal: 8)).color(lightGrey).make(),
                        ],
                       ),
                       // decription code 
                        15.heightBox,
                       "Description".text.color(fontGrey).fontFamily(semibold).make(),
                       5.heightBox,
                       "This is a dummy item and dummy description hare This is a dummy item and dummy description hare This is a dummy item and dummy description hare...".text.color(darkFontGrey).fontFamily(semibold).make(),
                       15.heightBox,
                       ListView(
                        shrinkWrap: true,
                        children:List.generate( itemDetailButtonsList .length, (index) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                                
                            title: "${ itemDetailButtonsList[index]}".text.fontFamily(bold).color(darkFontGrey).make(),
                            trailing: Icon(Icons.arrow_forward),
                           
                          ).box.color(whiteColor).shadowXs.roundedSM.make(),
                        )),
                       ),
                        20.heightBox,
                       //products likes 
                       productsLike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                       10.heightBox,
                       SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:List.generate(6, (index) =>Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP4,width: 100,fit: BoxFit.cover,),
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
            )
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: outButton(color: redColor,onPress: (){},textColor: whiteColor,title:addtocard ).box.color(redColor).make()
          )
        ],
      ),
    );
  }
}
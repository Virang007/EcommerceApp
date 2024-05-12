import 'package:flutter/material.dart';

class Testdoit extends StatefulWidget {
  const Testdoit({super.key});

  @override
  State<Testdoit> createState() => _TestdoitState();
}

class _TestdoitState extends State<Testdoit> {
    String selectedValue = 'Types of Bread';
     bool isopen = false;
  List<String> politicsList = [
    'Sandwich Bread, 450g',
    'Sandwich Bread, 450g',
    'Sandwich Bread, 450g',
    'Sandwich Bread, 450g',
    'Sandwich Bread, 450g',
    'Sandwich Bread, 450g',

  ];

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.add,
                color: Color(0xff6F3892),
              ),
              Text(
                "Add Bread name and Price",
                style: TextStyle(fontSize: 15, color: Color(0xff6F3892)),
              )
            ],
          ),
          content: SizedBox(
            height: 200,
            child: Column(
              children: [
                TextField(
                    // controller: MilestoneDetailecontroller,
                    decoration: InputDecoration(
                        hintText: "Enter Bread Name",
                        hintStyle: TextStyle(fontSize: 12))),
                SizedBox(
                  height: 20,
                ),  TextField(
                    // controller: MilestoneDetailecontroller,
                    decoration: InputDecoration(
                        hintText: "Enter Bread Price",
                        hintStyle: TextStyle(fontSize: 12))),
              
              ],
            ),
          ),
          actions: <Widget>[
            Center(
                child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                           ),
                        onPressed: () {
                          setState(() {
                            // Milestone.add(Milestonecontroller.text.toString());
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Add in List",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ))),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding:EdgeInsets.only(left: 20,top: 30,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select Bread",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: (){
                    _showAlertDialog(context);
                  },
                  child: Row(
                    children: [
                      Text("Add"),
                      Icon(Icons.add)
                    ],
                  ),
                )
              ],
            ),
            
            
            ),SizedBox(height: 30,),
            
              InkWell(
                onTap: () {
                  isopen = !isopen;
                  setState(() {});
                },
                child: Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
              
                    color: Color.fromARGB(255, 230, 227, 227),
                      border: Border.all(color: Color.fromARGB(255, 16, 15, 15)),
                      borderRadius: BorderRadius.circular(5)),
                  width: 352,
                  // height: 48,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(selectedValue),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        if (isopen)
                          ListView(
                            primary: true,
                            shrinkWrap: true,
                            children: politicsList
                                .map((e) => Container(
                                      child: InkWell(
                                          onTap: () {
                                            selectedValue = e;
                                            setState(() {});
                                            isopen = false;
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(e),
                                          )),
                                    ))
                                .toList(),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Text("Bread Pakages counts",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                  Text("1000",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                
                ],
              ),SizedBox(height: 100,),
            
              Container(
                    alignment: Alignment.center,
                  width: 250,
                  height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1),
                      color: Color.fromARGB(255, 139, 86, 189),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Total',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
            

        ],
      ),
    );
  }
}
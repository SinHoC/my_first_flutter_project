import 'package:flutter/material.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const appTitle = 'Delicious desserts ';
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.blue,
        title: const Text(appTitle, style: TextStyle(
        color: Colors.purple
    ),
    ),
             leading: IconButton(
               onPressed: () {
               Navigator.pop(context);
             },
                 icon: Icon(Icons.arrow_back,
              size: 30,
                   color: Colors.black),
    ),
    ),


    body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Bananas in Caramel Sauce',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.yellow,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      RaisedButton(
      child: Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
      color: Colors.yellow,
      textColor: Colors.black,
        onPressed: () {
          Widget okButton = TextButton(
            child: Text("OK",style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
          );

          // set up the AlertDialog
          AlertDialog alert = AlertDialog(
            title: Text("Ingredients---Bananas in Caramel Sauce"),
            content: Text('½ cup butter\n'
            'one cup superfine sugar\n'
                '1¼ cups heavy cream\n'
                '4 bananas, peeled and halved lengthwise\n'
            '\n'
                ,style: TextStyle(fontWeight: FontWeight.w800)),
            actions: [
              okButton,
            ],
          );

          // show the dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        },
      ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              child: Text("Directions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
                color: Colors.yellowAccent,
                textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog
                AlertDialog alert = AlertDialog(
                  title: Text("Directions---Bananas in Caramel Sauce"),
                  content: Text(
                      "Step 1\n"
                      'Melt butter in a large, heavy skillet over medium heat. Stir in sugar and cook, stirring, until sugar is melted and light brown. Slowly stir in the cream (mixture will bubble up).\n'
                      "Step 2\n"
                      'Let mixture boil 1 minute, then reduce heat to low. Place the bananas in the pan and cook until heated through, about 2 minutes. Serve hot.'

                      ,style: TextStyle(fontWeight: FontWeight.w800)),
                  actions: [
                    okButton,
                  ],
                );
                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
    ]),
      SizedBox(
        width: 40,
      ),
      Text('Panna Cotta',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.red,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      RaisedButton(
        child: Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
        color: Colors.red,
        textColor: Colors.black,
        onPressed: () {
    Widget okButton = TextButton(
    child: Text("OK",style: TextStyle(
    color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
    );

    // set up the AlertDialog

    AlertDialog alert = AlertDialog(
      title: Text("Ingredients---Panna Cotta"),
    content: Text('¼ cup and 1 tablespoon and 1 teaspoons skim milk\n'
    '1 (.25 ounce) envelope unflavored gelatin\n'
    '2 ½ cups heavy cream\n'
    '½ cup white sugar\n'
    '½ tablespoon vanilla extract\n'
    ,style: TextStyle(fontWeight: FontWeight.w800),
       ),
    actions: [
    okButton,
    ],
    );

    // show the dialog
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return alert;
    },
    );
        },
      ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                child: Text("Directions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
                color: Colors.redAccent,
                textColor: Colors.black,
                onPressed: () {
                  Widget okButton = TextButton(
                    child: Text("OK",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                  );

                  // set up the AlertDialog

                  AlertDialog alert = AlertDialog(
                    title: Text("Directions---Panna Cotta"),
                    content: Text(
                        "Step 1\n"
                        'Pour milk into a small bowl, and stir in the gelatin powder. Set aside.\n'
                        "Step 2\n"
                        'In a saucepan, stir together the heavy cream and sugar, and set over medium heat. Bring to a full boil, watching carefully, as the cream will quickly rise to the top of the pan. Pour the gelatin and milk into the cream, stirring until completely dissolved. Cook for one minute, stirring constantly. Remove from heat, stir in the vanilla and pour into six individual ramekin dishes.\n'
                        "Step 3\n"
                        'Cool the ramekins uncovered at room temperature. When cool, cover with plastic wrap, and refrigerate for at least 4 hours, but preferably overnight before serving.\n'
                      ,style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    actions: [
                      okButton,
                    ],
                  );

                  // show the dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
              ),
    ]),
      SizedBox(
        width: 40,
      ),
      Text('Triple the Ginger Cookies',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.amber,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.amber,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Ingredients---Triple the Ginger Cookies"),
                  content: Text('¾ cup butter\n'
                      '1 cup packed brown sugar\n'
                      '1 egg\n'
                      '¼ cup molasses\n'
                      '2¼ cups all-purpose flour\n'
                    '2 teaspoons ground ginger\n'
                    '2 teaspoons baking soda\n'
                    '½ teaspoon salt\n'
                    '1½ tablespoons minced fresh ginger root\n'
                    '½ cup chopped crystallized ginger'
                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              child: Text("Directions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.amberAccent,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Directions---Triple the Ginger Cookies"),
                  content: Text(
                    "Step 1\n"
                        'In a large bowl, cream together the butter and brown sugar until smooth. Beat in the egg and molasses. Combine the flour, ground ginger, baking soda, and salt; stir into the molasses mixture using a wooden spoon. Mix in the fresh and crystallized gingers. Cover, and refrigerate dough for at least 2 hours, or overnight.\n'
                        "Step 2\n"
                        'Preheat oven to 350 degrees F (175 degrees C). Shape dough into 1 inch balls, and place about 2 inches apart onto ungreased cookie sheet.\n'
                        "Step 3\n"
                        'Bake for 10 minutes in the preheated oven, or until lightly browned. Cool on wire racks.\n'
                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
          ]),
      SizedBox(
        width: 40,
      ),
      Text('Giant Cupcake',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.orange,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.orange,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Ingredients---Giant Cupcake"),
                  content: Text('1¾ cups white sugar\n'
                      '1½ cups unsalted butter, softened\n'
                      '2¾ cups self-rising flour, sifted\n'
                      '6 medium eggs, lightly beaten\n'
                      '2 teaspoons vanilla extract'
                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              child: Text("Directions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.orangeAccent,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Directions---Giant Cupcake"),
                  content: Text(
                    "Step 1\n"
                        'Preheat the oven to 325 degrees F (165 degrees C). If using a metal giant cupcake pan, thoroughly grease all sides and dust with flour, tapping to remove any excess. If using a silicone cake pan, there is no need to grease.\n'
                        "Step 2\n"
                        'Combine sugar and butter in a bowl and beat with an electric mixer until light and fluffy. Add in flour alternately with beaten eggs, a little at a time, beating well after each addition. Stir in vanilla extract. Divide the mixture between the top and bottom giant cupcake pans.\n'
                        "Step 3\n"
                        'Bake in the preheated oven until a tester inserted in the center comes out clean, 50 minutes to 1 hour. Cool in the pan, then turn out to cool completely on a wire rack. Once cool, frost and decorate as desired with your favorite frosting.\n'
                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
          ]),
      SizedBox(
        width: 40,
      ),
      Text('Pears Panos',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.green,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.green,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Ingredients---Pears Panos"),
                  content: Text('4 Bosc pears\n'
                      '½ cup white sugar\n'
                      '¼ teaspoon vanilla extract\n'
                      '¼ cup Cointreau or other orange liqueur\n'
                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              child: Text("Directions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.greenAccent,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Directions---Pears Panos"),
                  content: Text(
                    "Step 1\n"
                        'Peel the pears. You can halve and core them, or leave them whole: just carefully core the blossom end of each pear and remove the seeds.\n'
                        "Step 2\n"
                        'Place the pears into a large saucepan. Fill with enough water to cover the pears by 1 inch. Stir in the sugar and bring to a boil. Reduce heat and simmer uncovered until the liquid has reduced into a light syrup; this may take up to 1 hour. Remove from the heat and stir in the vanilla. Cool until just warm, then stir in the liqueur and serve.\n'
                        ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
          ]),
      SizedBox(
        width: 40,
      ),
      Text('Cranberry Jell-O® Salad',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.red,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.red,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Ingredients---Cranberry Jell-O® Salad"),
                  content: Text('2 cups fresh cranberries\n'
                      '1 (15 ounce) can mandarin oranges, drained and chopped\n'
                      '1 cup pecans\n'
                      '1 (15 ounce) can crushed pineapple, drained\n'
                    '2 (3 ounce) packages cranberry-flavored gelatin mix (such as Jell-O®)\n'
                    '¾ cup white sugar\n'
                    '1 cup boiling water\n'
                      '1 cup cold water'
                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              child: Text("Directions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
              color: Colors.redAccent,
              textColor: Colors.black,
              onPressed: () {
                Widget okButton = TextButton(
                  child: Text("OK",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16 )),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));},
                );

                // set up the AlertDialog

                AlertDialog alert = AlertDialog(
                  title: Text("Directions---Cranberry Jell-O® Salad"),
                  content: Text(
                    "Step 1\n"
                    'Place cranberries, mandarin oranges, and pecans into a food processor and pulse several times to chop; process mixture until finely ground, about 30 seconds. Transfer mixture into a large bowl.\n'
                        "Step 2\n"
                    'Mix pineapple, gelatin, sugar, boiling water, and cold water together in a separate bowl until gelatin and sugar have dissolved. Pour gelatin mixture into cranberry mixture and stir. Pour into a gelatin mold and refrigerate 8 hours or overnight before serving.\n'

                    ,style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  actions: [
                    okButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
          ]),
    ]
    )
    );
  }
}


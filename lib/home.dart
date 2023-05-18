import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('safe area'),
      ),
      body: const SafeArea(
        minimum: EdgeInsets.only(top: 100, left: 10),
        child: Text(
          "SafeArea na use thi child ne purta padding and nadta obstacles ne dur kare che and koy pan Divise ni ondition pramane set kare che  ",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------------------------------

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.brown,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 50,
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Expanded no use Row and Column ma use thayela multiple child ne Expanded kari ne size divide kari de che ",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

// --------------------------------------------------------------------------------------------------

class Boox extends StatefulWidget {
  const Boox({super.key});

  @override
  State<Boox> createState() => _BooxState();
}

class _BooxState extends State<Boox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          children: [
            Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              runSpacing: 8,
              children: [
                Container(height: 70, width: 70, color: Colors.cyanAccent),
                Container(height: 70, width: 70, color: Colors.blueGrey),
                Container(height: 70, width: 70, color: Colors.grey),
                Container(height: 70, width: 70, color: Colors.lightGreen),
                Container(height: 70, width: 70, color: Colors.green),
                Container(height: 70, width: 70, color: Colors.cyan),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Center(
                child: Text(
                  ' aane wrap keva ma aave je wrap ni madad thi jo velyu vadhare  hoy to e jate j screen ni size hoy em vastu ne stap by stap gothvi aape che ',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------------------------------

class Pageed extends StatefulWidget {
  const Pageed({super.key});

  @override
  State<Pageed> createState() => _PageedState();
}

List<Color> _colors = [
  Colors.amber,
  Colors.deepPurple,
  Colors.lightBlueAccent,
  Colors.deepOrange
];

int count = 0;

class _PageedState extends State<Pageed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pageview'),
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: _colors[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Page No',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(fontSize: 50, color: _colors[index]),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: _colors.length,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            count = index;
          });
        },
      ),
    );
  }
}

// ---------------------------------------------------------------------------------------------------------

class Slive extends StatefulWidget {
  const Slive({super.key});

  @override
  State<Slive> createState() => _SliveState();
}

class _SliveState extends State<Slive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliverlist'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(15),
                  child: Container(
                    color: Colors.cyan[100 * (index % 12 + 1)],
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "List Item $index",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

// ----------------------------------------------------------------------------------------------------------

class Clip extends StatefulWidget {
  const Clip({super.key});

  @override
  State<Clip> createState() => _ClipState();
}

class _ClipState extends State<Clip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cliprrect')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    child: Text(
                      'Cliprrect no use karva thi koy pan photo,container\n,box ne aapde shap aapi shakye chiye tena cornar\n ne clip kari ne round kari shakai che ',
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

// -----------------------------------------------------------------------------------------------------

class Absorb extends StatefulWidget {
  const Absorb({super.key});

  @override
  State<Absorb> createState() => _AbsorbState();
}

class _AbsorbState extends State<Absorb> {
  bool _absorbing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Absorbpointer"),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AbsorbPointer(
                  absorbing: _absorbing,
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan[300],
                        ),
                        child: const Text('Press the button'),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.teal[700],
                              content: const Text('Button is pressed'),
                              action: SnackBarAction(
                                  label: "undo", onPressed: () {}),
                            ),
                          );
                        },
                      ),
                      const TextField(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Absorb Pointer?'),
                    Switch(
                      activeColor: Colors.cyan[300],
                      value: _absorbing,
                      onChanged: (bool value) {
                        setState(() {
                          _absorbing = value;
                        });
                      },
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Absorbpointer na use thi koy pan Scrollable list, Buttons and Tab ne block karva mate thai che onli Absorbpointer mukva thi te block thai jay che ',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// --------------------------------------------------------------------------------------------------------------

class Stk extends StatefulWidget {
  const Stk({super.key});

  @override
  State<Stk> createState() => _StkState();
}

class _StkState extends State<Stk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stack'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.cyan,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: SizedBox(
                  child: Text(
                    ' Stak no use app ni ui ma Liars banava mate thai\n je jena thi koy pan Container ne ek par ek muki shakai che and ema maltipal chaild no pan use thai che Row and Column ni jem ',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------------------------------------------------------

class Positi extends StatefulWidget {
  const Positi({super.key});

  @override
  State<Positi> createState() => _PositiState();
}

class _PositiState extends State<Positi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Positioned')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    color: Colors.orangeAccent,
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.cyan,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.blue,
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    child: Container(
                      height: 200,
                      width: 100,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: SizedBox(
                  child: Text(
                    ' Positioned Widget no use Stack Widget ni Jyare maltipal child levama aave tyare e child ne position aapva and stap ma gothva mate Positioned widget no use thai che  ',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------------------------------

class Dismis extends StatefulWidget {
  const Dismis({super.key});

  @override
  State<Dismis> createState() => _DismisState();
}

class _DismisState extends State<Dismis> {
  final List<String> values = [
    'One',
    'two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'ten'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(18),
          itemCount: values.length,
          itemBuilder: (BuildContext context, int index) {
            var item = values[index];

            return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                } else {}
                setState(() {
                  values.removeAt(index);
                });
              },
              confirmDismiss: (direction) {
                return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Confirm to Remove '),
                        content: const Text(
                            'Are you Sure you want to Remove this item'),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text('Delete')),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text('Cancel'))
                        ],
                      );
                    });
              },
              background: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(24),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(16)),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              secondaryBackground: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(24),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16)),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(18)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/mitul.jpg'),
                  ),
                  title: Text(item),
                  subtitle: const Text(
                    'Dismissible widget no use list ma raheli vastu, aveli notification ne swip kari ne delet kari shakye chiye ',
                    textWidthBasis: TextWidthBasis.longestLine,
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// -------------------------------------------------------------------------------------------

class Media extends StatefulWidget {
  const Media({super.key});

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mediaquery"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------------------------------

class Spac extends StatefulWidget {
  const Spac({super.key});

  @override
  State<Spac> createState() => _SpacState();
}

class _SpacState extends State<Spac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spacer")),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.green,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 140,
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 40,
                  color: Colors.grey.shade100,
                  child: const Text(
                    "Spacer no use thi koy 2 widget ni vache same space karva mate thai che ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 100,
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}

// -------------------------------------------------------------------------------------------

class Rich extends StatefulWidget {
  const Rich({super.key});

  @override
  State<Rich> createState() => _RichState();
}

class _RichState extends State<Rich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Richtext Widget"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: const TextSpan(
              text: ' Richtext',
              style: TextStyle(fontSize: 50, color: Colors.blueGrey),
              children: [
                TextSpan(
                    text: ' NO use thi apde koy pan',
                    style: TextStyle(fontSize: 30, color: Colors.green)),
                TextSpan(
                    text: ' Singal line & paregraf ma ',
                    style: TextStyle(fontSize: 25, color: Colors.lightBlue)),
                TextSpan(
                    text: ' Maltipal stayl no use kari sakai che.',
                    style: TextStyle(fontSize: 35, color: Colors.pink))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// --------------------------------------------------------------------------------------

class Listv extends StatefulWidget {
  const Listv({super.key});

  @override
  State<Listv> createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Widget"),
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          ListTile(
            title: const Text('User 1'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 2'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 3'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 4'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 5'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 6'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 7'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 8'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 9'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User 10'),
            subtitle: const Text('notification'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.home),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  " Listview Widget use thi multipal children ne scroll direction aapi shakai che. ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------

class Tabb extends StatefulWidget {
  const Tabb({super.key});

  @override
  State<Tabb> createState() => _TabbState();
}

class _TabbState extends State<Tabb> {
  final _tabs = [
    const Tab(icon: Icon(Icons.home, color: Colors.black), text: 'Chat'),
    const Tab(
        icon: Icon(Icons.account_circle, color: Colors.black),
        text: 'Contacts'),
    const Tab(
        icon: Icon(Icons.settings, color: Colors.black), text: 'Settings'),
  ];

  final _tabPages = [
    const Center(
      child: Icon(
        Icons.abc_sharp,
        size: 80,
        color: Colors.black,
      ),
    ),
    const Center(
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 8),
        child: Text(
          " Tabbar no use flutter ma alag alag Tabs Creat karva mate thai che ",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic),
        ),
      ),
    ),
    const Center(
      child: Icon(
        Icons.call_merge,
        size: 80,
        color: Colors.black,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          bottom: TabBar(tabs: _tabs),
          title: const Text(' Tabbar '),
        ),
        body: TabBarView(children: _tabPages),
      ),
    );
  }
}

// --------------------------------------------------------------------------------------

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drawer Widget"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                      image: AssetImage('assets/photo2.png'),
                      fit: BoxFit.fill)),
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/mitul.jpg'),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mitul Sudani ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Active Status ',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("Profile"),
                  leading: Icon(Icons.account_circle),
                ),
                ListTile(
                  title: Text("Contacts"),
                  leading: Icon(Icons.contacts),
                ),
                ListTile(
                  title: Text("Messages"),
                  leading: Icon(Icons.message),
                ),
                ListTile(
                  title: Text("Share"),
                  leading: Icon(Icons.share),
                ),
                ListTile(
                  title: Text("Notifications"),
                  leading: Icon(Icons.notifications),
                ),
                Divider(
                  thickness: 8,
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text("Sing Out"),
                  leading: Icon(Icons.logout),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Deawer Widget no use app ni alag alag Screen ma User Simpal rite Navigate kari shake ena mate thai che.",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic),
        ),
      )),
    );
  }
}

// -------------------------------------------------------------------------------------

class Snack extends StatefulWidget {
  const Snack({super.key});

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("This is snak bar "),
                      action: SnackBarAction(
                        label: "Undo",
                        onPressed: () {},
                      ),
                    ),
                  );
                },
                child: const Text('Click me')),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                " Snakbar no use nana msg ne darshava mate thai che and te hamesha bottem ma thi j ave che "),
          )
        ],
      ),
    );
  }
}

// ------------------------------------------------------------------------------------

class Divid extends StatefulWidget {
  const Divid({super.key});

  @override
  State<Divid> createState() => _DividState();
}

class _DividState extends State<Divid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divider widget"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.cyan,
          ),
          const Divider(
            thickness: 5,
            color: Colors.black,
            indent: 15,
            endIndent: 15,
          ),
          Container(
            height: 200,
            color: Colors.indigo,
          ),
          const Divider(
            thickness: 5,
            color: Colors.black,
            indent: 15,
            endIndent: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Text(
              "Divider Widget no use 2 widgets ni vache jagya karva mate thai che jena thi te bev alag alag dekhai ",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------------

class Imagefil extends StatelessWidget {
  const Imagefil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagefiltered Widget"),
      ),
      body: Center(
        child: ImageFiltered(
            imageFilter: ImageFilter.matrix(Matrix4.rotationZ(0.2).storage),
            child: Image.asset('assets/photo3.jpg')),
      ),
    );
  }
}

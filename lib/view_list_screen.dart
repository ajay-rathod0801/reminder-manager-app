import 'package:flutter/material.dart';

class ViewListScreen extends StatelessWidget {
  const ViewListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        tabBarTheme: TabBarTheme(
          overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.transparent), // Remove the ripple effect
          unselectedLabelColor: Colors.black,
          labelColor: Colors.white,
        ),
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(),
            title: const Text('View List'),
            bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              tabs: const [
                Tab(
                  child:
                      Text('All Lists', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('Pinned', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20.0)), // Add this line to get rounded corners
                    ),
                  ),
                ),
                const SizedBox(height: 26.0),
                Card(
                  color: Colors.yellow.shade100,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'List 1',
                                style: TextStyle(
                                    fontSize:
                                        24.0), // Adjust this value to make your title bigger
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            SizedBox(
                                width:
                                    8.0), // Add some space between the icon and the text
                            Text('01/01/2022'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Card(
                  color: Colors.green.shade100,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'List 2',
                                style: TextStyle(
                                    fontSize:
                                        24.0), // Adjust this value to make your title bigger
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            SizedBox(
                                width:
                                    8.0), // Add some space between the icon and the text
                            Text('01/01/2022'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Card(
                  color: Colors.purple.shade100,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'List 3',
                                style: TextStyle(
                                    fontSize:
                                        24.0), // Adjust this value to make your title bigger
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            SizedBox(
                                width:
                                    8.0), // Add some space between the icon and the text
                            Text('01/01/2022'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:grahnumb_assignment/screens/detailed_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grahnumb_assignment/services/api_services.dart';
import 'package:grahnumb_assignment/services/user_data_model/user_data_model.dart';
import 'package:grahnumb_assignment/utils/themes/named_colors.dart';

import '../utils/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  bool isLoadingMore = false;
  int page = 1;
  List posts = [];
  Future<void> getUserData() async {
    print("Method triggered");
    final response = await http.get(Uri.parse(
        "https://techcrunch.com/wp-json/wp/v2/posts?per_page=5&page=${page.toString()}"));
    var data = jsonDecode(response.body) as List;
    print(data[0]['date']);
    if (response.statusCode == 200) {
      setState(() {
        posts += data;
      });

      // print(data);
      // return UserDataModel.fromJson(data);
    } else {
      print("In the Else section of code200");
      // return UserDataModel.fromJson(data);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(_scrollListener);
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TechCrunch"),
          elevation: 0,
          titleTextStyle: AppTextStyles.appBarTitle,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            labelStyle: AppTextStyles.tabBarLabel,
            labelColor: NamedColors.twitterBlack,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 60),
            tabs: const [
              Tab(
                text: "For You",
              ),
              Tab(
                text: "Following",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView.builder(
              controller: scrollController,
              itemCount: isLoadingMore ? posts.length + 1 : posts.length,
              itemBuilder: (context, index) {
                if (index < posts.length) {
                  final post = posts[index];
                  String? imageUrl = post['jetpack_featured_media_url'];
                  String? title = post['parselyMeta']['parsely-title'];
                  String? authorName = post['parselyMeta']['parsely-author'][0];

                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailedScreen(
                              post: post,
                            ))),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          imageUrl == null
                              ? const Icon(Icons.arrow_drop_down_outlined)
                              : CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(imageUrl),
                                ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      authorName!,
                                      style: AppTextStyles.userNameStyle,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "  @${authorName!.toLowerCase()}",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: NamedColors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(title!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                        color: NamedColors.twitterBlack,
                                        fontSize: 15)),
                                Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    alignment: Alignment.topLeft,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    height: deviceSize.height * 0.2,
                                    width: deviceSize.width * 0.64,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          imageUrl!,
                                          fit: BoxFit.cover,
                                        ))),
                                const Divider(
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  const Center(child: CircularProgressIndicator());
                }
              })
        ]),
      ),
    );
  }

  void _scrollListener() async {
    if (isLoadingMore) return;
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      setState(() {
        isLoadingMore = true;
      });
      page = page + 1;
      await getUserData();
      setState(() {
        isLoadingMore = false;
      });
    }
  }
}

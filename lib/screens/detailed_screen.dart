import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grahnumb_assignment/utils/themes/named_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailedScreen extends StatefulWidget {
  final dynamic post;
  DetailedScreen({super.key, this.post});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic data = widget.post;
    String? imageUrl = data['jetpack_featured_media_url'];
    String? title = data['parselyMeta']['parsely-title'];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detailed Info"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration:
                    const BoxDecoration(boxShadow: [BoxShadow(blurRadius: 15)]),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                title!,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: NamedColors.twitterBlack,
                    fontSize: 25),
              ),
              Html(
                data: data['content']['rendered'],
                onLinkTap: (url, context, attributes, element) async {
                  var uri = Uri.parse(url!);
                  var urllaunchable = await canLaunchUrl(
                      uri); //canLaunch is from url_launcher package
                  if (urllaunchable) {
                    await launchUrl(uri,
                        mode: LaunchMode
                            .platformDefault); //launch is from url_launcher package to launch URL
                  } else {
                    print("URL can't be launched.");
                  }
                },
              ),
            ],
          ),
        )));
  }
}

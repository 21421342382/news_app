import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

late _main_containerState main_con ;
class main_container extends StatefulWidget {
  const main_container({Key? key}) : super(key: key);

  @override
  State<main_container> createState() {
    main_con = _main_containerState();
    return main_con;
  }
}

class _main_containerState extends State<main_container> {
  @override
  void initState() {
    runYoutubePlayer();
    super.initState();

  }

  var channel_logo = "https://media.glassdoor.com/sqll/526037/abp-news-squarelogo-1436169589065.png";
  var title = "ABP NEW LIVE 24*7";
  var video_link = "https://youtu.be/nyd-xznCpJc";

  late YoutubePlayerController controller ;

  void runYoutubePlayer(){
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(video_link) ?? "",
    flags: YoutubePlayerFlags(
      isLive: true,
      autoPlay: true
    )
    );
  }




  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(player: YoutubePlayer(controller: controller,), builder: (context , player){
      return Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.white)
              ),
              child: player,
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    border: Border.all(color: Colors.yellowAccent)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child: Image.network(channel_logo,height: 40,width: 40,fit: BoxFit.fill,),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Text(title,style: TextStyle(color: Colors.white),),
              Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(Icons.crop_rotate,color: Colors.white,),
                ),
              )),
              SizedBox(width: 20,),

            ],
          )
        ],
      );

    });
  }
}

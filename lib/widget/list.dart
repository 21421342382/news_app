import 'package:broadcast/home/home.dart';
import 'package:broadcast/widget/main_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override


  var videos = [
    {"title" : "ABP NEW LIVE 24*7","video" : "https://youtu.be/nyd-xznCpJc" , "thumbnail" : "https://i.ytimg.com/vi/2SZMLIQ_Eo4/maxresdefault.jpg" , "channel_logo" : "https://media.glassdoor.com/sqll/526037/abp-news-squarelogo-1436169589065.png"},
    {"title" : "NDTV LIVE 34*7","video" : "https://youtu.be/WB-y7_ymPJ4" , "thumbnail" : "https://i.ytimg.com/vi/WB-y7_ymPJ4/maxresdefault_live.jpg" , "channel_logo" : "https://cdn.ndtv.com/common/images/ogndtv.png"},
    {"title" : "Jharkhand News","video" : "https://youtu.be/7Kc2jqv0vWM" , "thumbnail" : "https://gumlet.assettype.com/Prabhatkhabar/2022-05/a53b4a9a-c382-45dc-b4e1-7ef612606371/jharkhand_Breaking_News_live.jpg?w=1200&h=675&auto=format%2Ccompress&fit=max" , "channel_logo" : "https://yt3.ggpht.com/ytc/AMLnZu-MyR6shtAs0eztGgpKfkDXsGbvkSYMUw94TU6FGQ=s900-c-k-c0x00ffffff-no-rj"},
    {"title" : "News 24 Live","video" : "https://www.youtube.com/watch?v=Ba0G3k9RSZA" , "thumbnail" : "https://i.ytimg.com/vi/teZ65FgsXSE/maxresdefault.jpg" , "channel_logo" : "https://upload.wikimedia.org/wikipedia/commons/6/66/News24_Logo.jpg"},
    {"title" : "News 18 Live","video" : "https://www.youtube.com/watch?v=jTc5NN19qYs" , "thumbnail" : "https://i.ytimg.com/vi/rNo9tuQMuCM/maxresdefault.jpg" , "channel_logo" : "https://play-lh.googleusercontent.com/DMAcNyY7UwDpqWeOV7Gw7-cpmY5s4GSst8KYkW66XhYhbWRrXqVj-QD5PFns2lw-QAU=w240-h480-rw"},
  ];
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context , index){
          return Padding(padding: EdgeInsets.all(18),
          child: InkWell(
            onTap: (){
              main_con.controller.pause();
              main_con.setState(() {
                main_con.title = videos[index]["title"]!;
                main_con.channel_logo = videos[index]["channel_logo"]!;
                main_con.video_link = videos[index]["video"]!;
                main_con.controller.updateValue;
              });
            },
            child: Row(
              children: [
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
                      child: Image.network(videos[index]["channel_logo"]!,height: 40,width: 40,fit: BoxFit.fill,),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          // BoxShadow(
                          //   color: Colors.white,
                          //   blurRadius: 5.0
                          // )
                        ]
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          Container(
                              height: 90,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Image.network(videos[index]["thumbnail"]!,fit: BoxFit.fill,),
                              )
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              SizedBox(height: 8,),
                              Text(videos[index]["title"]!,style: TextStyle(color: Colors.black),),
                              Container(
                                height: 60,
                                width: 140,
                                child: Text("Lorem ipsum dolor sit amet. Est fugiat repudiandae qui sint ratione ut voluptatibus quis. Cum aperiam obcaecati ut dolorem maiores qui rerum voluptatem! Ut sint quod sit similique blanditiis qui quidem labore et assumenda voluptatem quo error tempora? Ut beatae explicabo id enim necessitatibus hic molestiae harum qui earum architecto est illum rerum vel odit eius sit rerum laboriosam. Aut voluptatem sequi a dolorem blanditiis aut beatae aliquam. Qui iure nobis 33 quibusdam debitis eos dolor necessitatibus in molestias assumenda At suscipit vero est voluptatibus consequatur non ipsa",
                                  style: TextStyle(color: Colors.grey),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                ),
                              )
                              // Expanded(
                              //   child: Align(
                              //       alignment: Alignment.bottomCenter,
                              //       child: Text("LIVE 🔴 ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                              // )
                            ],
                          ),
                          Expanded(child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.play_circle_fill,color: Colors.green,),
                          )),
                          SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
          );
    });
  }
}

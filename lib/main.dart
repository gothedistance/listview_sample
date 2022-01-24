import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatelessWidget {
  final npbTeams = <Map<String, String>>[
    {
      "name": "東京ヤクルトスワローズ",
      "home": "明治神宮野球場",
      "logo":
          "https://www-static.yakult-swallows.co.jp/hp/img/common/logo_pet.png",
    },
    {
      "name": "阪神タイガース",
      "home": "阪神甲子園球場",
      "logo":
          "https://tk.ismcdn.jp/mwimgs/5/b/500/img_5be3ffa559a45fa53e080f487f7c12ca23371.jpg",
    },
    {
      "name": "読売ジャイアンツ",
      "home": "東京ドーム",
      "logo": "https://www.giants.jp/primarymark/images/newPlogo01.png",
    },
    {
      "name": "広島東洋カープ",
      "home": "MAZDA Zoom-Zoom スタジアム 広島",
      "logo": "https://www.shop.carp.co.jp/shop/img/uploads/71102-1.jpg",
    },
    {
      "name": "中日ドラゴンズ",
      "home": "バンテリンドームナゴヤ",
      "logo":
          "https://upload.wikimedia.org/wikipedia/commons/3/39/Chunichi_Dragons_insignia.png",
    },
    {
      "name": "横浜DeNAベイスターズ",
      "home": "横浜スタジアム",
      "logo": "https://asset.baystars.co.jp/images/common/logo.png",
    },
    {
      "name": "オリックス・バファローズ",
      "home": "京セラドーム大阪",
      "logo":
          "https://yt3.ggpht.com/ytc/AKedOLQNsru7B11nAwMMfXtxfCQ9EMGoZdZWl37I5cHmgw=s900-c-k-c0x00ffffff-no-rj",
    },
    {
      "name": "千葉ロッテマリーンズ",
      "home": "ZOZOマリンスタジアム",
      "logo":
          "https://yt3.ggpht.com/5gnYNbF2UL0y8z1vpwvkzUf2go1bigy1KNixx1IvBUx6W5jakBnbf7ZxE8n0exUEfWL6ylHHww=s900-c-k-c0x00ffffff-no-rj",
    },
    {
      "name": "楽天ゴールデンイーグルス",
      "home": "楽天生命パーク宮城",
      "logo": "http://image.pia.jp/images/201402/201402210032_ex.png"
    },
    {
      "name": "福岡ソフトバンクホークス",
      "home": "福岡PayPayドーム",
      "logo":
          "https://cdn-ak.f.st-hatena.com/images/fotolife/s/sportsmeikan/20210320/20210320221104.jpg",
    },
    {
      "name": "北海道日本ハムファイターズ",
      "home": "札幌ドーム",
      "logo": "https://sp.fighters.co.jp/cmn/images/ogp/logo_p.png",
    },
    {
      "name": "埼玉西武ライオンズ",
      "home": "メットライフドーム",
      "logo":
          "https://pbs.twimg.com/profile_images/1181364788779028480/j7pGJ7FT_400x400.jpg",
    },
  ];

  ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Sample"),
        ),
        body: ListView.builder(
            itemCount: npbTeams.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(npbTeams[index]["logo"]!),
                title: Text(npbTeams[index]["name"]!),
                subtitle: Text(npbTeams[index]["home"]!),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(npbTeams[index]["name"]!),
                            content: Image.network(npbTeams[index]["logo"]!, width: 72, height: 72),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('CLOSE'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ));
                },
              );
            }));
  }
}

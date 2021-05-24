//import 'package:appmedicolaluz/helper/medics.dart';
import 'package:flutter/material.dart';

//import 'components/category_list_view.dart';
import 'components/horizontal_place_item.dart';
import 'components/news_list.dart';
import 'components/title_view.dart';
//import 'package:appmedicolaluz/screens/medic_menu/medic_menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        TitleView(
          titleTxt: 'Nuestro Staff',
          subTxt: 'Ver más',
        ),
        buildHorizontalList(context),
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: TitleView(
            titleTxt: 'Especialidades',
            subTxt: 'Ver más',
            //press: (){Navigator.pushNamed(context, MedicMenuScreen.routeName);},
          ),
        ),
        /*CategoryListView(
          callBack: () {
            
          },
        ),*/
        Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: TitleView(
            titleTxt: 'Noticias',
            subTxt: 'Ver más',
          ),
        ),
        newsList(),
      ],
    );
  }
}

buildHorizontalList(BuildContext context) {
  return Container(
      /*padding: EdgeInsets.only(top: 10.0, left: 20.0),
    height: 250.0,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      primary: false,
      itemCount: medics == null ? 0.0 : medics.length,
      itemBuilder: (BuildContext context, int index) {
        Map medic = medics.reversed.toList()[index];
        return HorizontalPlaceItem(medic: medic);
      },
    ),*/
      );
}

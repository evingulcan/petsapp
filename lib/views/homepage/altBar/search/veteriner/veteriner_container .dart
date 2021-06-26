import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/detay.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/veterinerler.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:url_launcher/url_launcher.dart';

class VeterinerContainer extends StatelessWidget {
  final int id;

  const VeterinerContainer({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(id: id),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.1), blurRadius: 3)
        ], color: Colors.white, borderRadius: BorderRadius.circular(9.0)),
        margin: const EdgeInsets.all(9.0),
        padding: const EdgeInsets.all(9.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              height:51,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9.0),
                child: Image.network(
                  "${veterinerInfo[id].image}",
                ),
              ),
            ),
            SizedBox(width: 9),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("${veterinerInfo[id].name}",
                      style: Theme.of(context).textTheme.subtitle),
                /*  Text(
                    "${veterinerInfo[id].type}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: SmoothStarRating(
                          rating: veterinerInfo[id].reviews,
                          size: 15,
                          color: MyColors.orange,
                        ),
                      ),
                      Text("(${veterinerInfo[id].reviewCount})"),
                    ],
                  )

                 */
                ],
              ),
            ),
            SizedBox(width: 9),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child:  FlatButton(
                       onPressed: () => launch(('tel:${veterinerInfo[id].mobile}')),
                        child: Icon(Icons.phone,)),
                  ),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(id: id),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Randevu Al",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: MyColors.darkGreen),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xffdbf3e8),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
import 'dart:convert';
import 'package:recipe_app/models/hits.dart';
import 'package:http/http.dart' as http;

class Recipie {
  List<Hits> hits = [];

  Future<void> getReceipe() async {
    String url =
        "https://api.edamam.com/search?q=banana&app_id=6d9f569c&app_key=653cc1203626637649213aebb5f55b6b";
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);
    jsonData["hits"].forEach((element) {
      Hits hits = Hits(
        recipeModel: element['recipe'],
      );
      // hits.recipeModel = add(Hits.fromMap(hits.recipeModel));
    });
  }
}

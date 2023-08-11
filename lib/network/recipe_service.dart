import 'package:http/http.dart';

const String apiKey = 'b0b6894672c6afefdfa0fd0bc64ebd17';
const String apiId = 'ebfdc3fc';
const String apiUrl = 'https://api.edamam.com/search';

class RecipeService{
  Future getData(String url) async{
    print("Calling url, $url ");
    final response = await get(Uri.parse(url));
    if(response.statusCode == 200){
      print(response.body);
      return response.body;
    }
    else{
      print(response.statusCode);
    }

 

  }
  Future<dynamic> getRecipes(String query, int from, int to) async{

  final recipeData = await getData('$apiUrl?app_id=$apiId&app_key=$apiKey&query&from=$from&to=$to');
   
  return recipeData;

 }
}
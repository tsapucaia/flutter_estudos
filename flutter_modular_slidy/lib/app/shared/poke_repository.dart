import 'package:dio/dio.dart';
import 'package:flutter_modular_slidy/app/shared/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemonModel> list = [];
    for (var item in response.data['results'] as List) {
      PokemonModel pokemon = new PokemonModel(name: item['name']);
      list.add(pokemon);
    }
    return list;
  }
}

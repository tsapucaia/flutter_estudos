import 'package:flutter_modular_slidy/app/shared/models/pokemon_model.dart';
import 'package:flutter_modular_slidy/app/shared/poke_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository){
    pokemons = repository.getAllPokemons().asObservable();
  }
}

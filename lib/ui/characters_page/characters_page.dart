import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/ui/grid_delegate/grid_delegate.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';

import '../../bloc/characters_bloc/characters_bloc.dart';
import '../../bloc/characters_bloc/characters_state.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class CharactersPage extends StatelessWidget implements AutoRouteWrapper {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColors.gray400,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.blue,
          title: const Text("Characters List"),
        ),
        body: BlocBuilder<CharactersBloc, CharactersState>(builder: (context, state) {
          if (state.isLoading && state.charactersList.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (state.exceptionWarning != null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CategoryButton(
                      onTapped: () async {
                        await BlocProvider.of<CharactersBloc>(context).fetchResults();
                      },
                      text: "REFRESH",
                    ),
                    Text(state.exceptionWarning!),
                  ],
                ),
              );
            }
            return RefreshIndicator(
                onRefresh: BlocProvider.of<CharactersBloc>(context).fetchResults,
                child: GridView.custom(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                  childrenDelegate: SmartPaginator((context, index) {
                    // Image imageToPass = state.charactersList[index].image != null
                    //     ? Image.network(
                    //   state.charactersList[index].image!,
                    //   fit: BoxFit.cover,
                    // )
                    //     : Image.asset('assets/images/question_mark.png');
                    CachedNetworkImage? imageToPass;
                    if (state.charactersList[index].image != null) {
                      imageToPass = CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: state.charactersList[index].image!,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      );
                    }

                    return Material(
                      child: InkWell(
                        onTap: () {
                          if (state.charactersList[index].slug != null) {
                            context.router.push(CharacterRoute(
                              passedCharacter: state.charactersList[index],
                              passedCharacterImage: imageToPass,
                            ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("No Character"),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        child: Center(
                          child: Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Stack(
                                      children: [
                                        if (state.charactersList[index].image != null)
                                          Center(
                                            child: SizedBox(
                                              child: imageToPass,
                                            ),
                                          )
                                        else
                                          Center(
                                              child:
                                                  Image.asset('assets/images/question_mark.png')),
                                        Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.transparent,
                                                Colors.black54,
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Image title text
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(
                                              state.charactersList[index].name ?? '',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                      isFetching: state.isLoading,
                      fetchMore: BlocProvider.of<CharactersBloc>(context).fetchResults,
                      childCount: state.charactersList.length),
                  padding: EdgeInsets.all(8.0),
                ));
          }
        }));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (context) => CharactersBloc(const CharactersState())..fetchResults(),
      child: this,
    );

    throw UnimplementedError();
  }
}

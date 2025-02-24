import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/potions_list_bloc/potions_list_state.dart';
import 'package:potteriana_ult/ui/grid_delegate/grid_delegate.dart';

import '../../bloc/potions_list_bloc/potions_list_bloc.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class PotionsListPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Potions List"),
        ),
        body: BlocBuilder<PotionsListBloc, PotionsListState>(
            builder: (context, state) {
              if (state.isLoading && state.potionsList.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (state.exceptionWarning != null) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () async {
                              await BlocProvider.of<PotionsListBloc>(context)
                                  .fetchResults();
                            },
                            child: Text("REFRESH")),
                        Text(state.exceptionWarning!),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                    onRefresh:
                    BlocProvider.of<PotionsListBloc>(context).fetchResults,
                    child: GridView.custom(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                      ),
                      childrenDelegate: SmartPaginator((context, index) {
                        return Material(
                          child: InkWell(
                            onTap: () {
                              if (state.potionsList[index].slug != null) {
                                context.router.push(PotionRoute(
                                  passedPotion: state.potionsList[index],
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
                                  Image.asset('assets/images/background_cover.jpg'),
                                  if (state.potionsList[index].image != null)
                                    Center(
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        imageUrl: state.potionsList[index].image!,
                                        placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                      ),
                                    )
                                  else
                                    Center(child: Image.asset('assets/images/question_mark.png')),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        color: Colors.white,
                                        child: Text(
                                            "${state.potionsList[index].name}")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                          isFetching: state.isLoading,
                          fetchMore:
                          BlocProvider.of<PotionsListBloc>(context).fetchResults,
                          childCount: state.potionsList.length),
                      padding: EdgeInsets.all(8.0),
                    ));
              }
            }));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PotionsListBloc>(
      create: (context) =>
      PotionsListBloc(const PotionsListState())..fetchResults(),
      child: this,
    );

    throw UnimplementedError();
  }
}

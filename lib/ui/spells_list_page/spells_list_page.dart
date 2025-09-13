import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';

import '../../bloc/spells_list_bloc/spells_list_bloc.dart';
import '../../bloc/spells_list_bloc/spells_list_state.dart';
import '../../navigation/routing/auto_router_config.gr.dart';
import '../grid_delegate/grid_delegate.dart';

@RoutePage()
class SpellsListPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.blue,
          title: const Text("Spells List"),
        ),
        body: BlocBuilder<SpellsListBloc, SpellsListState>(
            builder: (context, state) {
              if (state.isLoading && state.spellsList.isEmpty) {
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
                              await BlocProvider.of<SpellsListBloc>(context)
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
                    BlocProvider.of<SpellsListBloc>(context).fetchResults,
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
                              if (state.spellsList[index].slug != null) {
                                context.router.push(SpellRoute(
                                  passedSpell: state.spellsList[index],
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("No Spell"),
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
                                            if (state.spellsList[index].image != null)
                                              Center(
                                                child: CachedNetworkImage(
                                                  fit: BoxFit.cover,
                                                  imageUrl: state.spellsList[index].image!,
                                                  placeholder: (context, url) =>
                                                  const CircularProgressIndicator(),
                                                  errorWidget: (context, url, error) =>
                                                  const Icon(Icons.error),
                                                ),
                                              )
                                            else
                                              Center(child: Image.asset('assets/images/question_mark.png')),
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
                                                  state.spellsList[index].name ?? '',
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
                          fetchMore:
                          BlocProvider.of<SpellsListBloc>(context).fetchResults,
                          childCount: state.spellsList.length),
                      padding: EdgeInsets.all(8.0),
                    ));
              }
            }));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SpellsListBloc>(
      create: (context) =>
      SpellsListBloc(const SpellsListState())..fetchResults(),
      child: this,
    );

    throw UnimplementedError();
  }
}
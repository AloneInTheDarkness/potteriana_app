import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:potteriana_ult/repository/api/get_books/get_bboks.graphql.dart';

import 'ui/home_page/home_page.dart';



void main() {
  final grapher = GraphQLClient(link: HttpLink("https://api.potterdb.com/graphql/"), cache: GraphQLCache(), defaultPolicies: DefaultPolicies(query: Policies(fetch: FetchPolicy.noCache)));
  GetIt.I.registerSingleton<GraphQLClient>(grapher);
  runApp(MyApp());
}



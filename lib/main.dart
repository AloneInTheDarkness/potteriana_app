import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

import 'ui/home_page/home_page.dart';



void main() {
  final grapher = GraphQLClient(link: HttpLink("https://api.potterdb.com/graphql/"), cache: GraphQLCache(), defaultPolicies: DefaultPolicies(query: Policies(fetch: FetchPolicy.noCache)));
  GetIt.I.registerSingleton<GraphQLClient>(grapher);
  runApp(MyApp());
}



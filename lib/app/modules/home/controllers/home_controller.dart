import 'dart:async';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sample_project/app/modules/home/views/home_view.dart';
import 'package:sample_project/app/routes/app_pages.dart';

import 'package:sample_project/controllers/api_controller.dart';
import 'package:sample_project/controllers/controllers.dart';
import 'package:sample_project/extensions.dart';
import 'package:sample_project/generated/graphql/api.graphql.dart';

class HomeController extends GetxController {
  HomeController();

  Rxn<GetCurrentUser$QueryRoot$User> user =
      Rxn<GetCurrentUser$QueryRoot$User>(null);

  Stream<News$SubscriptionRoot> get newsStream {
    final currentNewsSubscription = NewsSubscription(
      variables: NewsArguments(),
    );
    final Stream<News$SubscriptionRoot> news = ApiController.subscribe(
      currentNewsSubscription.options() as SubscriptionOptions,
    ).map((QueryResult queryResult) {
      return currentNewsSubscription.parse(queryResult.data!);
    });
    return news;
  }

  void logout() async {
    try {
      ApiController.to.logout();
      Get.offNamed(Routes.AUTH);
    } catch (e) {}
  }

  void getUser(News$SubscriptionRoot$News post) async {
    Get.to(() => HomePost(post));

    user.value = null;
    if (post.userId == null) return;

    final query = GetCurrentUserQuery(
      variables: GetCurrentUserArguments(userId: post.userId!),
    );
    final result = await ApiController.query(query.options() as QueryOptions);

    user.value = result.data == null ? null : query.parse(result.data!).user;
  }

  void addNews({required String title, required String content}) async {
    final query = InsertNewsMutation(
      variables: InsertNewsArguments(content: content, title: title),
    );
    final result =
        await ApiController.mutate(query.options() as MutationOptions);
  }
}

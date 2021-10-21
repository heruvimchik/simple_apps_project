import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sample_project/generated/graphql/api.graphql.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        actions: [
          IconButton(
              onPressed: () => controller.logout(), icon: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: StreamBuilder<News$SubscriptionRoot>(
          stream: controller.newsStream,
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Container(
                  child: CircularProgressIndicator(
                    strokeWidth: 1.0,
                  ),
                ),
              );
            }
            if (!snapshot.hasData) return SizedBox.shrink();

            final news = snapshot.data!.news.reversed.toList();
            return ListView.builder(
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(news[index].title),
                    onTap: () {
                      controller.getUser(news[index]);
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(15),
              child: _AddCommentWidget(),
            ),
          );

          //controller.addNews();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class HomePost extends GetView<HomeController> {
  final News$SubscriptionRoot$News post;
  final DateFormat _dateFormatYear = DateFormat('EEE, MMM dd, yyyy');

  HomePost(this.post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.user.value?.displayName ?? '')),
      ),
      body: ListTile(
        isThreeLine: true,
        title: Text(post.title, style: const TextStyle(fontSize: 22)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _dateFormatYear.format(post.createdAt),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                post.content,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AddCommentWidget extends StatefulWidget {
  const _AddCommentWidget({Key? key}) : super(key: key);

  @override
  _AddCommentWidgetState createState() => _AddCommentWidgetState();
}

class _AddCommentWidgetState extends State<_AddCommentWidget> {
  String name = '', body = '';
  final _formKey = GlobalKey<FormState>();

  void _onTap(BuildContext context) {
    final formData = _formKey.currentState!;
    if (!formData.validate()) return;

    formData.save();
    final controller = Get.find<HomeController>();
    controller.addNews(title: name, content: body);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                initialValue: '',
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: RequiredValidator(errorText: 'enter text'),
                onSaved: (value) => name = value!,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                initialValue: '',
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(labelText: 'Comment'),
                validator: RequiredValidator(errorText: 'enter text'),
                onSaved: (value) => body = value!,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => _onTap(context),
                  child: const Text('Add comment'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

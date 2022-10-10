// import 'package:getx_api/api_service/api_request.dart';
//
// import '../model/post.dart';
//
// class PostsProvider {
//   void getPostsList({
//     required Function() beforeSend,
//     required Function(List<Post> posts) onSuccess,
//     required Function(dynamic error) onError,
//   }) {
//     ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null)
//         .get(
//       beforeSend: () => {if (beforeSend != null) beforeSend()},
//       onSuccess: (data) {
//         onSuccess(
//             (data as List).map((postJson) => Post.fromJson(postJson)).toList());
//       },
//       onError: (error) => {if (onError != null) onError(error)},
//     );
//   }
// }

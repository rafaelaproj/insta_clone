import 'package:insta_clone/models/comments_model.dart';

class Post {
  final int postId;
  final String name;
  final String profilePhotoUri;
  final String created;
  final String photoUri;
  final int likes;
  final List<Comment> comments;

  Post({
    this.postId,
    this.name,
    this.profilePhotoUri,
    this.created,
    this.photoUri,
    this.likes,
    this.comments,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
	return Post(
        	postId: json['postId'],
		name: json['name'],
		profilePhotoUri: json['profilePhotoUri'],
		created: json['created'],
		photoUri: json['photoUri'],
		likes: json['likes'],
		comments: json['comments'],
        );
  }

}

final List<Post> posts = [
  Post(
    postId: 1,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    created: '01:58',
    photoUri: 'https://mobile.int.granito.xyz/img/post-1-profile-1.jpg',
    likes: 542,
  ),
  Post(
    postId: 2,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    created: '02:01',
    photoUri: 'https://mobile.int.granito.xyz/img/post-1-profile-2.jpg',
    likes: 542,
  ),
  Post(
    postId: 3,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    created: '02:03',
    photoUri: 'https://mobile.int.granito.xyz/img/post-1-profile-3.jpg',
    likes: 139,
  ),
  Post(
    postId: 4,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    created: '02:04',
    photoUri: 'https://mobile.int.granito.xyz/img/post-2-profile-1.jpg',
    likes: 52,
  ),
  Post(
    postId: 5,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    created: '02:06',
    photoUri: 'https://mobile.int.granito.xyz/img/post-2-profile-2.jpg',
    likes: 311,
  ),
  Post(
    postId: 6,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    created: '02:07',
    photoUri: 'https://mobile.int.granito.xyz/img/post-2-profile-3.jpg',
    likes: 193,
  ),
  Post(
    postId: 7,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    created: '02:10',
    photoUri: 'https://mobile.int.granito.xyz/img/post-3-profile-1.jpg',
    likes: 249,
  ),
  Post(
    postId: 8,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    created: '02:12',
    photoUri: 'https://mobile.int.granito.xyz/img/post-4-profile-1.jpg',
    likes: 439,
  ),
  Post(
    postId: 9,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    created: '02:13',
    photoUri: 'https://mobile.int.granito.xyz/img/post-5-profile-1.jpg',
    likes: 544,
  ),
  Post(
    postId: 10,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    created: '02:17',
    photoUri: 'https://mobile.int.granito.xyz/img/post-3-profile-2.jpg',
    likes: 147,
  ),
  Post(
    postId: 11,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    created: '02:21',
    photoUri: 'https://mobile.int.granito.xyz/img/post-3-profile-3.jpg',
    likes: 69,
  ),
  Post(
    postId: 12,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    created: '02:23',
    photoUri: 'https://mobile.int.granito.xyz/img/post-4-profile-3.jpg',
    likes: 671,
    /* ERROR 404 */
  ),
  Post(
    postId: 13,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    created: '02:25',
    photoUri: 'https://mobile.int.granito.xyz/img/post-4-profile-3.jpg',
    likes: 503,
  ),
  Post(
    postId: 14,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    created: '02:28',
    photoUri: 'https://mobile.int.granito.xyz/img/post-5-profile-3.jpg',
    likes: 298,
  ),
  Post(
    postId: 15,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    created: '02:30',
    photoUri: 'https://mobile.int.granito.xyz/img/post-5-profile-2.jpg',
    likes: 716,
  ),
];

final List<String> stories = [
  'https://mobile.int.granito.xyz/img/profile-1.jpg',
  'https://mobile.int.granito.xyz/img/profile-2.jpg',
  'https://mobile.int.granito.xyz/img/profile-3.jpg',
];
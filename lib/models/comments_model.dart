
class Comment {
  int commentId;
  String name;
  String profilePhotoUri;
  String text;

  Comment({
    this.commentId,
    this.name,
    this.profilePhotoUri,
    this.text,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
     return Comment(
	commentId: json['id'],
	name: json['name'],
	profilePhotoUri: json['profilePhotoUri'],
	text: json['text'],
     );
  }

}

final List<Comment> comments = [
  Comment(
    commentId: 1,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: 'Ohhh such a cutie <3',
  ),
  Comment(
    commentId: 2,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    text: 'What breed is it?',
  ),
  Comment(
    commentId: 3,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    text: 'WANT IT NOW *-*',
  ),
  Comment(
    commentId: 4,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    text: 'OMG!',
  ),
  Comment(
    commentId: 5,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "So cute! what's the name?",
  ),
  Comment(
    commentId: 6,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    text: 'Amazing!',
  ),
  Comment(
    commentId: 7,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    text: "Beautiful, isn't? (:",
  ),
  Comment(
    commentId: 8,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    text: "Mike is kinda scared in this photo! HAHA",
  ),
  Comment(
    commentId: 9,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "lol u're working a lot!",
  ),
  Comment(
    commentId: 10,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "STOP WORKING NOW!",
  ),
  Comment(
    commentId: 11,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "Agreed!",
  ),
  Comment(
    commentId: 12,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "Seems delicious )':",
  ),
  Comment(
    commentId: 13,
    name: 'Peter Oosthuizen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-3.jpg',
    text: "u're amazing, Tania!",
  ),
  Comment(
    commentId: 14,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    text: "I'm also tired, lil' buddy u_u",
  ),
  Comment(
    commentId: 15,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "Poor Mr. Toffee",
  ),
  Comment(
    commentId: 16,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    text: "Why is Mr. Toffee so sad? Hahaha",
  ),
  Comment(
    commentId: 17,
    name: 'Tania Breytenbach',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-2.jpg',
    text: "Where the F*** are u?",
  ),
  Comment(
    commentId: 18,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    text: "'-'",
  ),
  Comment(
    commentId: 19,
    name: 'Olga Larsen',
    profilePhotoUri: 'https://mobile.int.granito.xyz/img/profile-1.jpg',
    text: "Stop this kind of post now or I'll call the police ):",
  ),
];

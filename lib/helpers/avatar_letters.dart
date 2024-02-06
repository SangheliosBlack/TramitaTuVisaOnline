String avatarLetters({required String name}){

  final first = name.split(" ")[0][0];
  final second = name.split(" ")[1][0];


  return first+second;


}
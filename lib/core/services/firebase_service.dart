import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movies_app/core/models/movie_model.dart';

class FirebaseService {
  late String uId;
  Future<String> initUser() async {
    await FirebaseAuth.instance.signInAnonymously();
    uId = FirebaseAuth.instance.currentUser!.uid;

    return uId;
  }

  Future getWatchListMovies() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection(uId).get();

    return List.generate(
      snapshot.docs.length,
      (index) {
        return MovieModel.fromFirebase(
          snapshot.docs[index].data(),
        );
      },
    );
  }

  Future addMovieToWatchList(MovieModel movie) async {
    await FirebaseFirestore.instance
        .collection(uId)
        .doc(movie.id.toString())
        .set(
          movie.toFirebase(),
        );
  }

  Future removeMovieFromWatchList(int id) async {
    await FirebaseFirestore.instance
        .collection(uId)
        .doc(id.toString())
        .delete();
  }
}

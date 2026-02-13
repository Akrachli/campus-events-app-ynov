import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Event>> getEvents() {
    return _firestore
        .collection('events')
        .orderBy('date', descending: false)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Event.fromFirestore(doc)).toList();
    });
  }

  Future<Event?> getEventById(String id) async {
    try {
      DocumentSnapshot doc = await _firestore.collection('events').doc(id).get();
      if (doc.exists) {
        return Event.fromFirestore(doc);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> addEvent(Event event) async {
    await _firestore.collection('events').add(event.toMap());
  }
}

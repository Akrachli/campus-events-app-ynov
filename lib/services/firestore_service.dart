import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event.dart';
import 'mock_firestore_service.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  // Mode DEMO avec données mockées
  static const bool USE_MOCK_DATA = true;

  Stream<List<Event>> getEvents() {
    if (USE_MOCK_DATA) {
      return Stream.value(MockFirestoreService.getMockEvents());
    }
    
    return _firestore
        .collection('events')
        .orderBy('date', descending: false)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Event.fromFirestore(doc)).toList();
    });
  }

  Future<Event?> getEventById(String id) async {
    if (USE_MOCK_DATA) {
      try {
        return MockFirestoreService.getMockEvents()
            .firstWhere((e) => e.id == id);
      } catch (e) {
        return null;
      }
    }
    
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
    if (!USE_MOCK_DATA) {
      await _firestore.collection('events').add(event.toMap());
    }
  }
}

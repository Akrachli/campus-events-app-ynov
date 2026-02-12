import '../models/event.dart';

class MockFirestoreService {
  static List<Event> getMockEvents() {
    return [
      Event(
        id: '1',
        title: 'Hackathon 2025',
        description: '48h pour créer une app innovante avec votre équipe',
        date: DateTime(2025, 3, 15, 9, 0),
        location: 'Campus Ynov - Salle 301',
        category: 'Tech',
        imageUrl: 'https://picsum.photos/400/200?random=1',
      ),
      Event(
        id: '2',
        title: 'Soirée d\'intégration',
        description: 'Rencontrez les nouveaux étudiants autour d\'un buffet',
        date: DateTime(2025, 2, 20, 19, 0),
        location: 'Salle polyvalente',
        category: 'Social',
        imageUrl: 'https://picsum.photos/400/200?random=2',
      ),
      Event(
        id: '3',
        title: 'Conférence IA & Éthique',
        description: 'Débat sur les enjeux éthiques de l\'intelligence artificielle',
        date: DateTime(2025, 3, 10, 14, 0),
        location: 'Amphithéâtre A',
        category: 'Conférence',
        imageUrl: 'https://picsum.photos/400/200?random=3',
      ),
      Event(
        id: '4',
        title: 'Workshop Flutter',
        description: 'Atelier pratique de développement mobile avec Flutter',
        date: DateTime(2025, 2, 25, 10, 0),
        location: 'Lab Informatique',
        category: 'Tech',
        imageUrl: 'https://picsum.photos/400/200?random=4',
      ),
    ];
  }
}

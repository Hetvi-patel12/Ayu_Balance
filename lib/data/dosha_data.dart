import '../models/dosha_model.dart';

final List<Dosha> doshaList = [
  Dosha(
    id: 'vata',
    name: 'Vata',
    description:
    'Vata is composed of air and ether elements. It governs movement, breathing, and the flow of thoughts. Balanced Vata brings creativity and energy, while imbalance causes anxiety and dryness.',
    imageUrl:
    'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=60',
    characteristics: [
      'Energetic and creative',
      'Quick learner but forgetful',
      'Light, dry, and cold body type',
      'Irregular appetite and sleep',
    ],
    balanceTips: [
      'Maintain a daily routine',
      'Eat warm and nourishing meals',
      'Practice calming yoga or meditation',
      'Avoid cold and raw foods',
    ],
  ),
  Dosha(
    id: 'pitta',
    name: 'Pitta',
    description:
    'Pitta represents fire and water. It controls digestion, metabolism, and energy production. Balanced Pitta leads to intelligence and confidence, while imbalance can cause anger or inflammation.',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg/500px-Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg',
    characteristics: [
      'Sharp intellect and strong willpower',
      'Moderate build and good digestion',
      'Tends to overheat easily',
      'Perfectionist tendencies',
    ],
    balanceTips: [
      'Avoid spicy and fried foods',
      'Practice cooling pranayama',
      'Spend time in nature',
      'Drink plenty of water and coconut water',
    ],
  ),
  Dosha(
    id: 'kapha',
    name: 'Kapha',
    description:
    'Kapha consists of earth and water. It governs structure, lubrication, and stability in the body and mind. When balanced, it brings calmness and strength; imbalance may cause lethargy or congestion.',
    imageUrl:
    'https://media.istockphoto.com/id/1453838542/photo/last-light-on-mount-sneffels.jpg?s=612x612&w=0&k=20&c=IBOZYpAjhV5hFEL8yKYmY2ZCyCaGEOrXR5VZI13NMRI=',
    characteristics: [
      'Calm and compassionate nature',
      'Steady energy and endurance',
      'Prone to weight gain or sluggishness',
      'Loves comfort and routine',
    ],
    balanceTips: [
      'Engage in regular physical activity',
      'Eat light and warm foods',
      'Avoid excessive sleep',
      'Seek new experiences to stay motivated',
    ],
  ),
];

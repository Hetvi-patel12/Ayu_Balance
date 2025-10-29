// Corrected type structure: Map<String, Map<String, Map<String, List<String>>>>
final Map<String, Map<String, Map<String, List<String>>>> foodData = {
  'vata': {
    'favorable': {
      'Grains': ['Rice', 'Oats', 'Wheat', 'Quinoa'],
      'Vegetables': ['Sweet potatoes', 'Carrots', 'Beets', 'Pumpkin'],
      'Fruits': ['Bananas', 'Mangoes', 'Berries', 'Peaches'],
      'Spices': ['Cinnamon', 'Ginger', 'Cardamom', 'Turmeric'],
    },
    'limit': {
      'Grains': ['Barley', 'Millet'],
      'Vegetables': ['Broccoli', 'Cauliflower', 'Potatoes'],
      'Fruits': ['Apples (raw)', 'Pears'],
      'Spices': ['Chili', 'Black pepper'],
    }
  },
  'pitta': {
    'favorable': {
      'Grains': ['Rice', 'Barley', 'Oats', 'Wheat'],
      'Vegetables': ['Cucumber', 'Leafy greens', 'Broccoli', 'Celery'],
      'Fruits': ['Melons', 'Apples', 'Pomegranates', 'Berries'],
      'Spices': ['Coriander', 'Cardamom', 'Turmeric', 'Fennel'],
    },
    'limit': {
      'Grains': ['Corn', 'Buckwheat'],
      'Vegetables': ['Chilies', 'Onions', 'Garlic'],
      'Fruits': ['Citrus fruits', 'Papaya'],
      'Spices': ['Mustard', 'Cloves', 'Chili powder'],
    }
  },
  'kapha': {
    'favorable': {
      'Grains': ['Barley', 'Millet', 'Buckwheat', 'Rye'],
      'Vegetables': ['Broccoli', 'Spinach', 'Peas', 'Asparagus'],
      'Fruits': ['Apples', 'Pears', 'Berries', 'Pomegranates'],
      'Spices': ['Black pepper', 'Turmeric', 'Ginger', 'Mustard'],
    },
    'limit': {
      'Grains': ['Rice', 'Wheat'],
      'Vegetables': ['Sweet potatoes', 'Cucumber'],
      'Fruits': ['Bananas', 'Mangoes'],
      'Spices': ['Salt', 'Sugar-heavy mixes'],
    }
  },
};

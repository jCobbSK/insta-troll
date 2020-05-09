const List<String> Jokes = [
  'Doctor: I\'m sorry but you suffer from a terminal illness and have only 10 to live.\nPatient: What do you mean, 10? 10 what? Months? Weeks?!\nDoctor: Nine.',
  'Dentist: This will hurt a little.\nPatient: OK.\nDentist: I\’ve been having an affair with your wife for a while now.'
];

const List<String> Motivations = [
  'Write it on your heart that every day is the best day in the year.\n -- Ralph Waldo Emerson',
  'Perfection is not attainable, but if we chase perfection we can catch excellence.\n -- Vince Lombardi',
  'Everything you\'ve ever wanted is on the other side of fear.\n -- George Addair',
  'Dwell on the beauty of life. Watch the stars, and see yourself running with them.\n -- Marcus Aurelius',
  'The key to immortality is first living a life worth remembering.\n -- Bruce Lee',
];

enum TagCategory {
  Art,
  Nature,
  City,
  Landscape,
  Morning,
  Food,
  Fitness,
  Happy,
  Funny,
}

const Map<TagCategory, String> TagTranslation = {
  TagCategory.Art: 'Art',
  TagCategory.Nature: 'Nature',
  TagCategory.City: 'City',
  TagCategory.Landscape: 'Landscape',
  TagCategory.Morning: 'Morning',
  TagCategory.Food: 'Food',
  TagCategory.Fitness: 'Fitness',
  TagCategory.Happy: 'Happy',
  TagCategory.Funny: 'Funny',
};

const Map<TagCategory, List<String>> Tags = {
  TagCategory.Art: ['art', 'relax', 'artwork', 'painting', 'creative', 'instaart', 'artist'],
  TagCategory.Nature: ['photooftheday', 'picoftheday', 'nature', 'happiness', 'clouds', 'naturephotography', 'picture', 'naturelovers'],
  TagCategory.City: ['travel', 'life', 'design', 'photographer', 'inspiration', 'architecture', 'streetphotography', 'street'],
  TagCategory.Landscape: ['instadaily', 'beauty', 'pretty', 'instapic', 'landscape', 'vacation', 'instaphoto', 'view', 'outdoors', 'travel'],
  TagCategory.Morning: ['morning', 'goodmorning', 'mood', 'live', 'peace', 'day', 'enjoy'],
  TagCategory.Food: ['food', 'foodie', 'delicious', 'awesome', 'breakfast', 'yum', 'yummy', 'lunch', 'tasty', 'foodphotography', 'foodporn', 'instafood'],
  TagCategory.Fitness: ['instafit', 'exercise', 'abs', 'fitness', 'gym', 'fit'],
  TagCategory.Happy: ['instagood', 'happy', 'life', 'amazing', 'instamood', 'instapic', 'workout', 'happiness', 'blessed'],
  TagCategory.Funny: ['lol']
};
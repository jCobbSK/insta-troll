enum TagCategory {
  Art,
  Animal,
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
  TagCategory.Animal: 'Animal',
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
  TagCategory.Art: ['art', 'relax', 'artwork', 'painting', 'creative', 'instaart', 'artist', 'artistic', 'artists', 'arte', 'artwork', 'beautiful'],
  TagCategory.Animal: ['fauna', 'nature_shooters', 'animales', 'nature', 'animals', 'animal', 'animalsofinstagram', 'animallovers'],
  TagCategory.Nature: ['photooftheday', 'picoftheday', 'nature', 'happiness', 'clouds', 'naturephotography', 'picture', 'naturelovers'],
  TagCategory.City: ['travel', 'life', 'design', 'photographer', 'inspiration', 'architecture', 'streetphotography', 'street'],
  TagCategory.Landscape: ['instadaily', 'beauty', 'pretty', 'instapic', 'landscape', 'vacation', 'instaphoto', 'view', 'outdoors', 'travel'],
  TagCategory.Morning: ['morning', 'goodmorning', 'mood', 'live', 'peace', 'day', 'enjoy'],
  TagCategory.Food: ['food', 'foodie', 'delicious', 'awesome', 'breakfast', 'yum', 'yummy', 'lunch', 'tasty', 'foodphotography', 'foodporn', 'instafood', 'hungry', 'foodgasm', 'yumyum', 'delicions', 'foodporn', 'stuffed', 'sharefood', 'foodpic', 'foodpics'],
  TagCategory.Fitness: ['instafit', 'exercise', 'abs', 'fitness', 'gym', 'fit', 'fitfam'],
  TagCategory.Happy: ['instagood', 'happy', 'life', 'amazing', 'instamood', 'instapic', 'workout', 'happiness', 'blessed'],
  TagCategory.Funny: ['lol', 'fun', 'funny', 'funnymemes', 'funtimes', 'funnyshit', 'funnypictures', 'funday', 'funtime', 'funnypics'],
};
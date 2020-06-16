User.destroy_all
FavoriteDrink.destroy_all
Cocktail.destroy_all

recipes = File.readlines('db/pdt_recipes.txt')
recipes.map! {|recipe| recipe.strip}.reject! {|recipe| recipe.empty?}

recipes = recipes.slice_before {|recipe| recipe.upcase == recipe}.map do |recipe|
  Cocktail.new_from_book(recipe)

  
end

User.create(username: "Joey", password_digest: "test")

10.times do
  FavoriteDrink.create(user_id: User.all.sample.id, cocktail_id: Cocktail.all.sample.id)
end
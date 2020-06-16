class CreateFavoriteDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_drinks do |t|
      t.references :user, foreign_key: true
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end

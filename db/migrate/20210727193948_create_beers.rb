class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :alcohol
      t.string :description
      t.integer :ibu

      t.timestamps
    end
  end
end

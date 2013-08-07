class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :num_attr
      t.string :attr1
      t.string :attr2
      t.string :attr3
      t.string :attr4
      t.string :attr5
      t.string :attr6
      t.string :attr7
      t.string :attr8
      t.string :attr9

      t.timestamps
    end
  end
end

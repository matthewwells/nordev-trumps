class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :val1
      t.string :val2
      t.string :val3
      t.string :val4
      t.string :val5
      t.string :val6
      t.string :val7
      t.string :val8
      t.string :val9

      t.timestamps
    end
  end
end

class CreateAvengers < ActiveRecord::Migration[5.2]
  def change
    create_table :avengers do |t|
      t.string :avenger
      t.timestamps
    end
  end
end

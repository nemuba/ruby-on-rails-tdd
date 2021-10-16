class CreateTable < ActiveRecord::Migration[5.2]
  def change
    create_table :person do |t|
      t.string :name
      t.date :birthdate
      t.timestamps
    end
  end
end

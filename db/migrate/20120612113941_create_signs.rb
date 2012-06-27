class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :name
      t.string :surnmae
      t.string :location
      t.decimal :contact
      t.string :password

     t.timestamps
    end
  end
end

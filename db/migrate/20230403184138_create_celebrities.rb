class CreateCelebrities < ActiveRecord::Migration[7.0]
  def change
    create_table :celebrities do |t|
      t.string :name
      t.string :age
      t.text :stared_in
      t.text :image

      t.timestamps
    
    end
  end
end

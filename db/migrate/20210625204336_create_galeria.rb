class CreateGaleria < ActiveRecord::Migration[6.1]
  def up
    create_table :galeria do |t|
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.text "opis"
    	t.boolean "widoczna", :default => false
    	has_many_attached :zdjecie
      t.timestamps
    end
  end

  def down
  	drop_table :galeria
  end
end

class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string      :name,  null: false            
      t.string      :lyricist,  null: false            
      t.string      :year, null: false           
      t.string      :position, null: false
      t.references  :category, foreign_key: true   

      t.timestamps
    end
  end
end

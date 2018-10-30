class CreateLlinks < ActiveRecord::Migration[5.2]
  def change
    create_table :llinks do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end

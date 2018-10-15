class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.belongs_to :person, foreign_key: true
      t.string :number
      t.string :type
      t.timestamps
    end
  end
end

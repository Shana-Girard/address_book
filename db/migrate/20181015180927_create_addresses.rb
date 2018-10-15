class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.belongs_to :person, foreign_key: true
      t.string :streetname

      t.timestamps
    end
  end
end

class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.belongs_to :person, :foreign_key => 'owner_id'
      t.references :owned, :foreign_key => 'owned_id',

      t.timestamps
    end
  end
end

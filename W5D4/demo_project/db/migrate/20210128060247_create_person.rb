class CreatePerson < ActiveRecord::Migration[6.1]
  validates :name, prescence:true
  def change
    create_table :people do |t|
      t.string :name, :house_id
      t.timestamps
    end
  end
end

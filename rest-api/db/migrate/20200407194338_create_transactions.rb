class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      
      t.datetime :timestamp
      t.string :description
      t.string :category
      t.string :vendor
      t.string :location
      t.integer :amount
      t.belongs_to :accounts
      t.belongs_to :users
    end
  end
end

class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.belongs_to :supplier, null: false, foreign_key: true
      t.string :account_number

      t.timestamps
    end
  end
end

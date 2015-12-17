class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.string :account_name
    	t.integer :amount
    	t.string :status
    	t.references :user
    end
  end
end

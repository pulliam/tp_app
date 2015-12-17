class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :username
    	t.string :email
    	t.string :password_digest
    	t.string :avatar_url, :default => "http://www.expatica.com/images/default_avatar.jpg"
    end
  end
end

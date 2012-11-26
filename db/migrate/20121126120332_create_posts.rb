class CreatePosts < ActiveRecord::Migration
  
  def up
    create_table :posts do |t|
    	t.string "name", :null => false, :limit => 25
    	t.string "email", :null => false, :limit => 25
    	t.string "message", :null => false, :limit => 150
		t.timestamps
    end
  end

  def down
  	drop_table :posts	
  end

end

class IncreaseNumcharsForEmailField < ActiveRecord::Migration
  
  def up
  	change_table :posts, :message, :text, :limit => 1000
  end

  def down
  	change_table :posts, :message, :string, :limit => 150
  end

end

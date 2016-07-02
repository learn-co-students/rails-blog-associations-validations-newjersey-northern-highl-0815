class CreateJoinTablePostTags < ActiveRecord::Migration
  def change
		create_join_table :posts, :tags do |t|
		end
  end
end

class AddColumn < ActiveRecord::Migration
	def change
		add_column :urls, :clickcount, :integer
	end
end

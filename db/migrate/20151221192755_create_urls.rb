class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |t|
			t.string :longurl
			t.string :shorturl
			t.timestamp null: false
		end
	end
end

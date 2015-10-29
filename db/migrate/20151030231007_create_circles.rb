class CreateCircles < ActiveRecord::Migration
	def change
		create_table :circles do |t|
			t.integer :owner, null: false
			t.string :name, null: false
			t.timestamps
		end
	end
end

class CreateDomains < ActiveRecord::Migration[5.0]
  def change
    create_table :domains do |t|
	    t.string :title
	    t.text :description
	    t.datetime :created_at
	    t.datetime :updated_at
    end
  end
end

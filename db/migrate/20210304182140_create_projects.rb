class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :html
      t.string :javascript
      t.string :css


      t.timestamps
    end
  end
end

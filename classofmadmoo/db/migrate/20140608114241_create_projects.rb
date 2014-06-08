class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :team, index: true
      t.string :name
      t.text :body
      t.datetime :deadline

      t.timestamps
    end
  end
end

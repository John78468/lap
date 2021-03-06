class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|

      t.string :title
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :gossip, index: true, foreign_key: true
      t.timestamps
    end
  end
end

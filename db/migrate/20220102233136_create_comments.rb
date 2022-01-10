class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.text :content, polymorphic: true
      t.belongs_to :gossip, polymorphic: true
      t.belongs_to :user, index: true, foreign_key: true
    
      t.timestamps
    end
  end
end

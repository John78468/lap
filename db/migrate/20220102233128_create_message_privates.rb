class CreateMessagePrivates < ActiveRecord::Migration[6.1]
  def change
    create_table :message_privates do |t|

      t.text :content
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end

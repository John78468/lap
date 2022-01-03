class CreateCommentJoinComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_join_comments do |t|

      t.timestamps
    end
  end
end

class Comment < ApplicationRecord
  include Visible
  belongs_to :article

  def change
    create_table :comments do |t|
      t.string :commenter, presence: true
      t.string :body, presence: true, length: { minimum: 10 }
      t.references :article, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

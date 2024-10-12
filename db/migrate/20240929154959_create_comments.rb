class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments , id: :uuid do |t|
      t.text :comment
      t.references :article, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

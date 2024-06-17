class AddNameKindLevelToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :kind, :integer
    add_column :users, :level, :integer
  end
end

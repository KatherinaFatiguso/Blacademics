class RemoveShortMessageFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :short_message, :text
  end
end

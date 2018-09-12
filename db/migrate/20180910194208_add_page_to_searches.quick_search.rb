# This migration comes from quick_search (originally 20140225145441)
class AddPageToSearches < ActiveRecord::Migration[4.2]
  def change
    add_column :searches, :page, :string
  end
end

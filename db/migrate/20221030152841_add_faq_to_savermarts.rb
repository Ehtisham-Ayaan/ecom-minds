class AddFaqToSavermarts < ActiveRecord::Migration[6.1]
  def change
    add_column :savermarts, :name, :string
    add_column :savermarts, :faq, :text
    add_column :savermarts, :box, :text
    add_column :savermarts, :cond, :text
  end
end

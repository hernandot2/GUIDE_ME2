class AddAboutToPrograms < ActiveRecord::Migration[7.0]
  def change
    add_column :programs, :about, :string
  end
end

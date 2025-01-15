class AddInstructionToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :instruction, :text
  end
end

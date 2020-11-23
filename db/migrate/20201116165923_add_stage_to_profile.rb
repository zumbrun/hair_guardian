class AddStageToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :stage, :string
  end
end

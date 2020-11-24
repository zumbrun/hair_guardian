class AddStageToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :stage, :text
  end
end

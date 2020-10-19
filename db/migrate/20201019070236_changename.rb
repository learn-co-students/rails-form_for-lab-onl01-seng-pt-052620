class Changename < ActiveRecord::Migration[5.0]
  def change
    rename_table :schoolclass, :school_classes
  end
end

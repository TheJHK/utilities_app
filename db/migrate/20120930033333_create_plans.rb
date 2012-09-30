class CreatePlans < ActiveRecord::Migration
  def up
	rename_column :plans, :type, :plan_type
  end
  
  def down
	rename_column :plans, :plan_type, :type
  end
end

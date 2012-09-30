class Plan < ActiveRecord::Base
  attr_accessible :company_name, :details, :extended_details, :plan_type, :zip
end

require 'spec_helper'

describe "plans/edit" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :company_name => "MyString",
      :zip => "MyString",
      :details => "MyString",
      :plan_type => "MyString",
      :extended_details => "MyString"
    ))
  end

  it "renders the edit plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path(@plan), :method => "post" do
      assert_select "input#plan_company_name", :name => "plan[company_name]"
      assert_select "input#plan_zip", :name => "plan[zip]"
      assert_select "input#plan_details", :name => "plan[details]"
      assert_select "input#plan_plan_type", :name => "plan[plan_type]"
      assert_select "input#plan_extended_details", :name => "plan[extended_details]"
    end
  end
end

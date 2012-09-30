require 'spec_helper'

describe "plans/index" do
  before(:each) do
    assign(:plans, [
      stub_model(Plan,
        :company_name => "Company Name",
        :zip => "Zip",
        :details => "Details",
        :plan_type => "Plan Type",
        :extended_details => "Extended Details"
      ),
      stub_model(Plan,
        :company_name => "Company Name",
        :zip => "Zip",
        :details => "Details",
        :plan_type => "Plan Type",
        :extended_details => "Extended Details"
      )
    ])
  end

  it "renders a list of plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => "Plan Type".to_s, :count => 2
    assert_select "tr>td", :text => "Extended Details".to_s, :count => 2
  end
end

require 'spec_helper'

describe "plans/show" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :company_name => "Company Name",
      :zip => "Zip",
      :details => "Details",
      :plan_type => "Plan Type",
      :extended_details => "Extended Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Zip/)
    rendered.should match(/Details/)
    rendered.should match(/Plan Type/)
    rendered.should match(/Extended Details/)
  end
end

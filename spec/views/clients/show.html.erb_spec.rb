require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :first_name => "First Name",
      :last_name => "Last Name",
      :phone => "Phone",
      :email => "Email",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
  end
end

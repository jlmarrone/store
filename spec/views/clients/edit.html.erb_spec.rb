require 'spec_helper'

describe "clients/edit" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", client_path(@client), "post" do
      assert_select "input#client_first_name[name=?]", "client[first_name]"
      assert_select "input#client_last_name[name=?]", "client[last_name]"
      assert_select "input#client_phone[name=?]", "client[phone]"
      assert_select "input#client_email[name=?]", "client[email]"
      assert_select "input#client_address[name=?]", "client[address]"
    end
  end
end

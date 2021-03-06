require 'spec_helper'

describe "nodes/new" do
  before(:each) do
    assign(:node, stub_model(Node,
      :Name => "MyString"
    ).as_new_record)
  end

  it "renders new node form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nodes_path, :method => "post" do
      assert_select "input#node_Name", :name => "node[Name]"
    end
  end
end

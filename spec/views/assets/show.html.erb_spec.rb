require 'spec_helper'

describe "assets/show.html.erb" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

require 'spec_helper'

describe "assets/new.html.erb" do
  let(:asset) { mock_model("Asset").as_new_record }
  let(:owner) { mock_model("Owner").as_new_record }

  before(:each) do
    asset.stub(:owner => owner)
    asset.stub(:name)
    asset.stub(:owner_attributes=)
    
    owner.stub(:name)
    
    assign(:asset, asset)
    
  end

  it "renders new asset form with owner attributes" do
    render
    puts rendered
    assert_select "form[method=post][action=?]", assets_path do
      assert_select "input[type=text][name='asset[owner_attributes][name]']"
    end
  end
end

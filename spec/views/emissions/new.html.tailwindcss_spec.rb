require 'rails_helper'

RSpec.describe "emissions/new", type: :view do
  before(:each) do
    assign(:emission, Emission.new(
      :title => "MyString",
      :presenter => "MyString",
      :description => "MyText",
      :poster => nil
    ))
  end

  it "renders new emission form" do
    render

    assert_select "form[action=?][method=?]", emissions_path, "post" do

      assert_select "input[name=?]", "emission[title]"

      assert_select "input[name=?]", "emission[presenter]"

      assert_select "textarea[name=?]", "emission[description]"

      assert_select "input[name=?]", "emission[poster]"
    end
  end
end

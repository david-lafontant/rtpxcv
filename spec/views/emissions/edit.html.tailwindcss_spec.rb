require 'rails_helper'

RSpec.describe "emissions/edit", type: :view do
  before(:each) do
    @emission = assign(:emission, Emission.create!(
      :title => "MyString",
      :presenter => "MyString",
      :description => "MyText",
      :poster => nil
    ))
  end

  it "renders the edit emission form" do
    render

    assert_select "form[action=?][method=?]", emission_path(@emission), "post" do

      assert_select "input[name=?]", "emission[title]"

      assert_select "input[name=?]", "emission[presenter]"

      assert_select "textarea[name=?]", "emission[description]"

      assert_select "input[name=?]", "emission[poster]"
    end
  end
end

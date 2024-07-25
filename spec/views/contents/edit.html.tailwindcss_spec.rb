require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyString",
      :description => "MyText",
      :media => nil,
      :emission => nil
    ))
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "input[name=?]", "content[title]"

      assert_select "textarea[name=?]", "content[description]"

      assert_select "input[name=?]", "content[media]"

      assert_select "input[name=?]", "content[emission_id]"
    end
  end
end

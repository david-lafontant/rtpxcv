require 'rails_helper'

RSpec.describe "emissions/show", type: :view do
  before(:each) do
    @emission = assign(:emission, Emission.create!(
      :title => "Title",
      :presenter => "Presenter",
      :description => "MyText",
      :poster => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Presenter/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end

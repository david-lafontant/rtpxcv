require 'rails_helper'

RSpec.describe 'contents/show', type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
                                  title: 'Title',
                                  description: 'MyText',
                                  media: nil,
                                  emission: nil
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

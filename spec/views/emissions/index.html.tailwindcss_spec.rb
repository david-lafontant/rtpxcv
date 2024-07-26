require 'rails_helper'

RSpec.describe 'emissions/index', type: :view do
  before(:each) do
    assign(:emissions, [
             Emission.create!(
               title: 'Title',
               presenter: 'Presenter',
               description: 'MyText',
               poster: nil
             ),
             Emission.create!(
               title: 'Title',
               presenter: 'Presenter',
               description: 'MyText',
               poster: nil
             )
           ])
  end

  it 'renders a list of emissions' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Presenter'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        title: "MyText",
        content: "MyText",
        image: "Image"
      ),
      Article.create!(
        title: "MyText",
        content: "MyText",
        image: "Image"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end

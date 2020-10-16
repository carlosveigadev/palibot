require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      title: "MyText",
      content: "MyText",
      image: "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "textarea[name=?]", "article[title]"

      assert_select "textarea[name=?]", "article[content]"

      assert_select "input[name=?]", "article[image]"
    end
  end
end

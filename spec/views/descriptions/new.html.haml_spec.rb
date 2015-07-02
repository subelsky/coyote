require 'rails_helper'

RSpec.describe "descriptions/new", type: :view do
  before(:each) do
    assign(:description, Description.new(
      :image => nil,
      :status => nil,
      :metum => nil,
      :locale => "MyString",
      :text => "MyText",
      :user => nil
    ))
  end

  it "renders new description form" do
    render

    assert_select "form[action=?][method=?]", descriptions_path, "post" do

      assert_select "input#description_image_id[name=?]", "description[image_id]"

      assert_select "input#description_status_id[name=?]", "description[status_id]"

      assert_select "input#description_metum_id[name=?]", "description[metum_id]"

      assert_select "input#description_locale[name=?]", "description[locale]"

      assert_select "textarea#description_text[name=?]", "description[text]"

      assert_select "input#description_user_id[name=?]", "description[user_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "applicants/index", type: :view do
  before(:each) do
    assign(:applicants, [
      Applicant.create!(
        :name => "Name",
        :email => "Email",
        :website => "Website",
        :cover_letter => "MyText",
        :job => nil
      ),
      Applicant.create!(
        :name => "Name",
        :email => "Email",
        :website => "Website",
        :cover_letter => "MyText",
        :job => nil
      )
    ])
  end

  it "renders a list of applicants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

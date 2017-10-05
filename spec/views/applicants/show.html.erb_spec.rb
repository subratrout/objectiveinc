require 'rails_helper'

RSpec.describe "applicants/show", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!(
      :name => "Name",
      :email => "Email",
      :website => "Website",
      :cover_letter => "MyText",
      :job => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end

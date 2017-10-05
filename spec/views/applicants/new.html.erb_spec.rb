require 'rails_helper'

RSpec.describe "applicants/new", type: :view do
  before(:each) do
    assign(:applicant, Applicant.new(
      :name => "MyString",
      :email => "MyString",
      :website => "MyString",
      :cover_letter => "MyText",
      :job => nil
    ))
  end

  it "renders new applicant form" do
    render

    assert_select "form[action=?][method=?]", applicants_path, "post" do

      assert_select "input#applicant_name[name=?]", "applicant[name]"

      assert_select "input#applicant_email[name=?]", "applicant[email]"

      assert_select "input#applicant_website[name=?]", "applicant[website]"

      assert_select "textarea#applicant_cover_letter[name=?]", "applicant[cover_letter]"

      assert_select "input#applicant_job_id[name=?]", "applicant[job_id]"
    end
  end
end

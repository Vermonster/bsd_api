require "spec_helper"

describe BsdApi::XmlGenerator do
  context "with all user data" do
    let(:user){
    { first_name: "first",
      last_name: "last",
      email: "email@email.com",
      user_name: "user",
      created_at: Time.now.to_s
    }}
    it "returns xml" do
      xml = BsdApi::XmlGenerator.get_xml(user)
      xml.should include(user[:first_name])
      xml.should include(user[:last_name])
      xml.should include(user[:email])
      xml.should include(user[:user_name])
      xml.should include(user[:created_at])
    end
  end
end

require "spec_helper"

describe BsdApi::UrlGenerator do
  context "all api input" do
    let(:api_host_name){"name"}
    let(:api_path){"path"}
    let(:api_id){"id"}
    let(:api_secret){"secret"}

    it " returns a url " do
      url  = BsdApi::UrlGenerator.get_url(api_host_name, api_path, api_id, api_secret)
      url.should include(api_host_name)
      url.should include(api_path)
      url.should include(api_id)
    end
  end
end

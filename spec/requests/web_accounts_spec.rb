require 'rails_helper'

RSpec.describe "WebAccounts", type: :request do
  describe "GET /web_accounts" do
    it "works! (now write some real specs)" do
      get web_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end

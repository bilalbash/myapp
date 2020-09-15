require "rails_helper"

RSpec.describe WebAccountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/web_accounts").to route_to("web_accounts#index")
    end

    it "routes to #new" do
      expect(:get => "/web_accounts/new").to route_to("web_accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/web_accounts/1").to route_to("web_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/web_accounts/1/edit").to route_to("web_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/web_accounts").to route_to("web_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/web_accounts/1").to route_to("web_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/web_accounts/1").to route_to("web_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/web_accounts/1").to route_to("web_accounts#destroy", :id => "1")
    end

  end
end

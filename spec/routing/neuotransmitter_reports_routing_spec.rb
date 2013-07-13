require "spec_helper"

describe NeuotransmitterReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/neuotransmitter_reports").should route_to("neuotransmitter_reports#index")
    end

    it "routes to #new" do
      get("/neuotransmitter_reports/new").should route_to("neuotransmitter_reports#new")
    end

    it "routes to #show" do
      get("/neuotransmitter_reports/1").should route_to("neuotransmitter_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/neuotransmitter_reports/1/edit").should route_to("neuotransmitter_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/neuotransmitter_reports").should route_to("neuotransmitter_reports#create")
    end

    it "routes to #update" do
      put("/neuotransmitter_reports/1").should route_to("neuotransmitter_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/neuotransmitter_reports/1").should route_to("neuotransmitter_reports#destroy", :id => "1")
    end

  end
end

require File.dirname(__FILE__) + '/spec_helper'

describe 'Rack::GoogleImage' do
  include Rack::Test::Methods

  def app
    Rack::GoogleImage.new(TestRackApp.new)
  end

  describe '#call' do

    context "GET /" do
      before(:each) do
        get '/'
      end

      it "should return status code 200" do
        last_response.status.should == 200
      end

      it "should return html" do
        last_response.body.should == TestRackApp::DummyBody.to_s
      end
    end

    context "GET /yahoo.jpg" do
      before(:each) do
        Rack::GoogleImage.any_instance.stub(:search_image).and_return('foo')
        get '/yahoo.jpg'
      end

      it "should return jpg via google search" do
        last_response.body.should == "foo"
      end

      it "should change jpg content" do
        last_response.body.should_not == TestRackApp::DummyImage.to_s
      end

      it "should return status code 200" do
        last_response.status.should == 200
      end
    end
  end
end

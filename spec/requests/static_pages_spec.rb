require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    before(:each) do
      visit '/static_pages/home'
    end

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help page" do

    before(:each) do
      visit '/static_pages/help'
    end

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    before(:each) do
      visit '/static_pages/about'
    end

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end

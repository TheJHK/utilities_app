require 'spec_helper'

describe "StaticPages" do
  
	describe "Home Page" do
  
		it "should have the h1 'Utilities App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Utilities App')
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Utilities App | Home")
		end
	end
  
	describe "About Page" do
  
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "Utilities App | About Us")
		end
	end
end

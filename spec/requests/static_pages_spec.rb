require 'spec_helper'

describe "StaticPages" do
  
	describe "Home page" do
		it "should have the content 'Home App'" do
			visit '/static_pages/home'
			page.should have_content('Home App')
		end

		it "should have the h1 'Home App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Home App')
		end


		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
		end




	end

	describe "Help page" do
		it "should have the content 'Help App'" do
			visit '/static_pages/help'
			page.should have_content('Help App')
		end

		it "should have the h1 'Help App'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help App')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do
		it "should have the content 'About App'" do
			visit '/static_pages/about'
			page.should have_content('About App')
		end

		it "should have the h1 'About App'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About App')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
		end
	end



end

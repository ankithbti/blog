require 'spec_helper'

describe "StaticPages" do
  
  	subject { page }


	describe "Home page" do
		before { visit root_path }
		it { should have_selector('h1', :text => 'Home App') }
		it { should have_selector('title', :text => full_title('')) }
		it { should_not have_selector 'title', :text => '| Home' }
	end



	describe "Contact page" do
		it "should have the content 'Contact App'" do
			visit contact_path
			page.should have_content('Contact App')
		end

		it "should have the h1 'Contact App'" do
			visit contact_path
			page.should have_selector('h1', :text => 'Contact App')
		end


		it "should have the right title" do
			visit contact_path
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
		end
	end

	describe "Help page" do
		it "should have the content 'Help App'" do
			visit help_path
			page.should have_content('Help App')
		end

		it "should have the h1 'Help App'" do
			visit help_path
			page.should have_selector('h1', :text => 'Help App')
		end

		it "should have the right title" do
			visit help_path
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do
		it "should have the content 'About App'" do
			visit about_path
			page.should have_content('About App')
		end

		it "should have the h1 'About App'" do
			visit about_path
			page.should have_selector('h1', :text => 'About App')
		end

		it "should have the right title" do
			visit about_path
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
		end
	end



end

require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the h1 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', 
				:text => 'Sample App')
		end
		it "should have the title Home" do
			visit '/static_pages/home' do
				page.shoud have_selector('title', 
					:text => "Tuiti | Home")
			end
		end
	end

	describe "Help page" do
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1',
				:text => 'Help')
		end
		it "should have the title Help" do
			visit '/static_pages/help' do
				page.shoud have_selector('title', 
					:text => "Tuiti | Help")
			end
		end
	end

	describe "About page" do
		it "hould have the h1 'About us'" do
			visit '/static_pages/about'
			page.should have_selector('h1',
				:text => 'About us')
		end
		it "should have the title About" do
			visit '/static_pages/about' do
				page.shoud have_selector('title', 
					:text => "Tuiti | About")
			end
		end
	end

	describe "Contact page" do
		it "hould have the h1 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1',
				:text => 'Contact')
		end
		it "should have the title 'Contact'" do
			visit '/static_pages/contact' do
				page.shoud have_selector('title', 
					:text => "Tuiti | Contact")
			end
		end
	end
end



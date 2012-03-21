require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', 
				:text => 'Sample App')
		end
		it "should have the right title" do
			visit '/static_pages/home' do
				page.shoud have_selector('title', 
					:text => "Tuiti | Home")
			end
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1',
				:text => 'Help')
		end
		it "should have the right title" do
			visit '/static_pages/help' do
				page.shoud have_selector('title', 
					:text => "Tuiti | Help")
			end
		end
	end

	describe "About page" do
		it "hould have the content 'About us'" do
			visit '/static_pages/about'
			page.should have_content('About us')
		end
		it "should have the right title" do
			visit '/static_pages/about' do
				page.shoud have_selector('title', 
					:text => "Tuiti | About")
			end
		end
	end
end



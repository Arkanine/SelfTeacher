require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "Should have content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit home_path
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
  	   visit home_path
  	   expect(page).to have_title("SelfTeacher | Home")
    end
  end

  describe "Help page" do
    it "Should have content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
  	   visit help_path
  	   expect(page).to have_title("SelfTeacher | Help")
    end
  end

  describe "About page" do
    it "SHould have content 'About'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      expect(page).to have_content('About')
    end

    it "should have the right title" do
  	   visit about_path
  	   expect(page).to have_title("SelfTeacher | About")
    end
  end
end

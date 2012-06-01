require 'spec_helper'

describe "Statics" do
  subject { page }
  
  describe "Home page" do
    
    before { visit root_path }
    it { should have_selector('h1', :text => 'Welcome')}
    it { should have_selector('title', :text => 'Ruby on Rails Sample Application :: Home')}

  end
  
  describe "About page" do
    
    before { visit about_path }
    
    it { should have_selector('h1', :text => 'About') }
    it { should have_selector('title', :text => 'Ruby on Rails Sample Application :: About')}

  end
  
  describe "Contact page" do
    
    before { visit contact_path }
    it { should have_selector('h1', :text => 'Contact Us') }
    it { should have_selector('title', :text => 'Ruby on Rails Sample Application :: Contact Us') }

  end
  
  describe "Help page" do
    
    before { visit help_path }
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => 'Ruby on Rails Sample Application :: Help') }
    
  end

end

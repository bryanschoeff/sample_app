require 'spec_helper'

describe ApplicationHelper do
  
  describe "full_title" do
    
    it "should include the page title" do
      full_title('foo').should =~ /foo/
    end
    
    it "should include the base title" do
      full_title('foo').should =~ /^Ruby on Rails Sample Application/
    end
    
    it "should not include a '::' on the home page" do
      full_title('').should_not =~ /::/
    end
      
  end
  
end

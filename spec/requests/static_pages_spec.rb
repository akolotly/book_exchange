require 'rails_helper'

describe "Static pages" do
  
  subject { page }

  describe "About us" do
    
    before { visit about_us_path }

    it "Displays the correct content" do
      is_expected.to have_selector('h1', text: 'О нас') 
      is_expected.to have_title('About us') 
    end
  end
end
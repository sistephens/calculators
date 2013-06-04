# encoding: utf-8
require 'spec_helper'

feature "Child Benefit Tax Calculator" do

  it "should have a placeholder landing page" do
    visit "/child-benefit-tax-calculator"
    within "header.page-header" do
      page.should have_content("Estimate your High Income Child Benefit Tax Charge")
    end
  end

  it "should redirect to the landing page if no tax year exists" do
    visit "/child-benefit-tax-calculator/main"
    current_path.should == "/child-benefit-tax-calculator"

  end

  it "should store the tax year when the user clicks it" do
    visit "/child-benefit-tax-calculator"
    click_link "Click if you pay tax on Child Benefit for the tax year 2012 to 2013"
    page.should have_content("for 2012 to 2013")
  end

  describe "Calculating the results for 2012-13" do
    before(:each) do
      visit "/child-benefit-tax-calculator"
      click_link "Click if you pay tax on Child Benefit for the tax year 2012 to 2013"
    end

    it "calculates the overall cost" do
      fill_in "total_annual_income", :with => "5000"
      fill_in "children", :with => "2"
      click_button "Go"
      within ".outcome" do
        page.should have_content("£1,000")
      end
    end
  end

  describe "adding children" do
    before(:each) do
      visit "/child-benefit-tax-calculator"
      click_link "Click if you pay tax on Child Benefit for the tax year 2012 to 2013"
    end

    describe "adding new stopping children" do
      it "should show the new child form when you click add new child" do
        click_button "Add a new starting child"
        within "#add_new_starting_child" do
          page.should have_content("When did you start getting Child Benefit for a new child?")
        end
      end
    end

    describe "adding new stopping children" do
      it "should show the stopping child form when you click" do
        click_button "Add a new stopping child"
        within "#add_new_stopping_child" do
          page.should have_content("When will you stop getting Child Benefit for this child?")
        end
      end

    end

  end
end

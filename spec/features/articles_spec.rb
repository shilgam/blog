require "rails_helper"

describe "Articles" do

  context "Visiting the index" do
    it "Visits the index" do
      visit "/articles"
      expect(page).to have_content "Articles"
    end
  end

  context "creating an article" do
    it "Visits the index" do
      visit "/articles"
      click_link "New article"
      fill_in "Title", with: "Creating an Article"
      fill_in "Text", with: "Created this article successfully!"
      click_button "Create Article"

      expect(page).to have_content "Creating an Article"
    end
  end
end

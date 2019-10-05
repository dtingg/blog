require "application_system_test_case"

describe "Articles", :system do
  let(:article) { articles(:one) }

  it "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  it "creating a Article" do
    visit articles_url
    click_on "New Article"

    fill_in "Body", with: @article.body
    fill_in "Title", with: @article.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  it "updating a Article" do
    visit articles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @article.body
    fill_in "Title", with: @article.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  it "destroying a Article" do
    visit articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article was successfully destroyed"
  end
end

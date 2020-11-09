require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit ask_url
  
    assert_selector "h1", text: "Talk to your coach"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "blurt", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "asking a question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "blurt", with: "Hello?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end
end

require "application_system_test_case"

class DecisionsTest < ApplicationSystemTestCase
  setup do
    @decision = decisions(:one)
  end

  test "visiting the index" do
    visit decisions_url
    assert_selector "h1", text: "Decisions"
  end

  test "should create decision" do
    visit decisions_url
    click_on "New decision"

    fill_in "Input", with: @decision.input
    fill_in "Input type", with: @decision.input_type
    fill_in "Project", with: @decision.project_id
    fill_in "Result", with: @decision.result
    click_on "Create Decision"

    assert_text "Decision was successfully created"
    click_on "Back"
  end

  test "should update Decision" do
    visit decision_url(@decision)
    click_on "Edit this decision", match: :first

    fill_in "Input", with: @decision.input
    fill_in "Input type", with: @decision.input_type
    fill_in "Project", with: @decision.project_id
    fill_in "Result", with: @decision.result
    click_on "Update Decision"

    assert_text "Decision was successfully updated"
    click_on "Back"
  end

  test "should destroy Decision" do
    visit decision_url(@decision)
    click_on "Destroy this decision", match: :first

    assert_text "Decision was successfully destroyed"
  end
end

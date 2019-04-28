Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should be on {string} page") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
    expect(page).not_to have_content content
end
require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  fixtures :all

  # test "the truth" do
  #   assert true
  # end

  test "does not log engine actions" do
	get mongo_metrics.root_path
	assert 0, MongoMetrics::Metric.count
  end

  test "exports data to csv" do
	get main_app.home_foo_path
	get mongo_metrics.metrics_path(format: :csv)
	assert_match "process_action.action_controller,", response.body
  end

end


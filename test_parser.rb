require "test/unit"

load "parser.rb"
load "task_details.rb"

class TestParser < Test::Unit::TestCase

  def should_parse_detail(detail, value)
    text = `cat test_data.txt`

    details = Parser.new().parse(text)

    assert(details.has_key?(detail))
    assert_equal(value, details[detail])
  end

  def test_should_parse_status()
    should_parse_detail(TaskDetails.STATUS, "Running")
  end

  def test_should_parse_last_run_time()
    should_parse_detail(TaskDetails.LAST_RUN_TIME, Time.new(2014, 05, 14, 17, 49, 59))
  end

  def test_should_parse_next_run_time()
    should_parse_detail(TaskDetails.NEXT_RUN_TIME, Time.new(2014, 05, 14, 17, 55, 00))
  end

  def test_should_parse_last_result()
    should_parse_detail(TaskDetails.LAST_RESULT, "267009")
  end

  def test_should_parse_state()
    should_parse_detail(TaskDetails.STATE, "Enabled")
  end

  def test_should_parse_repeat()
    should_parse_detail(TaskDetails.REPEAT, 5)
  end

end
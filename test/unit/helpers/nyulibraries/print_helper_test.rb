require 'test_helper'
module Nyulibraries
  class PrintHelperTest < ActionView::TestCase
    # Include to get application title.
    include Nyulibraries::ApplicationHelper

    test "print title" do
      assert_equal "Dummy Application", print_title
    end

    test "application stylesheet with default media" do
      assert_equal("<link href=\"/stylesheets/print.css\" " +
        "media=\"print\" rel=\"stylesheet\" type=\"text/css\" />", 
          print_stylesheet)
    end

    test "application stylesheet with all media" do
      assert_equal("<link href=\"/stylesheets/print.css\" " +
        "media=\"all\" rel=\"stylesheet\" type=\"text/css\" />", 
          print_stylesheet(:all))
    end

    test "application javascript" do
      assert_equal("<script src=\"/javascripts/print.js\" " +
        "type=\"text/javascript\"></script>", print_javascript)
    end
  end
end

# Rails helper module for bobcat layout.
# Assumes
#     - Rails helper function
#     - AuthPdsNyu controller methods
require 'active_support/concern'
module EshelfHelper
  extend ActiveSupport::Concern
  
  included do |klass|
    klass.class_eval {
      include NyulibrariesHelper
    }
  end

  # Title of application
  def title
    "BobCat"
  end

  # Footer
  def footer
    javascript_include_tag "https://libraryh3lp.com/js/libraryh3lp.js?multi"
  end

  # Username
  def username
    (current_user) ? 
      "#{current_user.firstname} #{current_user.lastname}" : "Guest"
  end

  def back_to
    content_tag("i", nil, :class => "icons-famfamfam-arrow_undo") + back_to_text
  end
  
  def back_to_text
    "Back to results"
  end
end
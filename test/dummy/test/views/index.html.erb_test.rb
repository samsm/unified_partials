require 'test_helper'
require 'ostruct'

class IndexTest < ActionView::TestCase
  def setup
    @book = OpenStruct.new title: "Test Title", author: "Test Author"
    render template: "books/index"
  end
  def test_layout
    assert_select 'div.custom-show-attribute' do
      assert_select 'h1', text: "Test Title"
    end
  end
end

require 'test_helper'
# Create Categories Test
class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: 'books')
    @category_2 = Category.create(name: 'programming')
  end

  test 'should show categories listing' do
    get categories_path
    assert_template 'categories/index'
    assert_select 'a[href=?]', categories_path(@category), text: @category.name
    assert_select 'a[href=?]', categories_path(@category_2), text: @category_2.name
  end
end

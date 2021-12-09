require "test_helper"

class DictionariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dictionary = dictionaries(:one)
  end

  test "should get index" do
    get dictionaries_url
    assert_response :success
  end

  test "should get new" do
    get new_dictionary_url
    assert_response :success
  end

  test "should create dictionary" do
    assert_difference('Dictionary.count') do
      post dictionaries_url, params: { dictionary: { description: @dictionary.description, fruit_id: @dictionary.fruit_id, name: @dictionary.name, pet_id: @dictionary.pet_id } }
    end

    assert_redirected_to dictionary_url(Dictionary.last)
  end

  test "should show dictionary" do
    get dictionary_url(@dictionary)
    assert_response :success
  end

  test "should get edit" do
    get edit_dictionary_url(@dictionary)
    assert_response :success
  end

  test "should update dictionary" do
    patch dictionary_url(@dictionary), params: { dictionary: { description: @dictionary.description, fruit_id: @dictionary.fruit_id, name: @dictionary.name, pet_id: @dictionary.pet_id } }
    assert_redirected_to dictionary_url(@dictionary)
  end

  test "should destroy dictionary" do
    assert_difference('Dictionary.count', -1) do
      delete dictionary_url(@dictionary)
    end

    assert_redirected_to dictionaries_url
  end
end

require 'test_helper'

class PictureUploadTest < ActionDispatch::IntegrationTest

  test "upload picture" do
    get root_path
    assert_select 'div.upload'
    assert_select 'input[type=file]'

    # Invalid submission
    assert_no_difference 'Image.count' do
      post images_path, params: { image: { picture: '' } }
    end
    assert_select 'div#error_explanation'

    # Valid submission
    picture = fixture_file_upload('test/fixtures/spine.jpg', 'image/jpg')
    description = "This is a nice test picture"
    assert_difference 'Image.count', 1 do
      post images_path, params: { image: { picture: picture,
                                           description: description } }
    follow_redirect!
    assert_template 'images/index'
    end

  end
end

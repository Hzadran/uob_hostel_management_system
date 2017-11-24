require 'test_helper'

class HostelFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hostel_form = hostel_forms(:one)
  end

  test "should get index" do
    get hostel_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_hostel_form_url
    assert_response :success
  end

  test "should create hostel_form" do
    assert_difference('HostelForm.count') do
      post hostel_forms_url, params: { hostel_form: { bank: @hostel_form.bank, blood_group: @hostel_form.blood_group, chalan_number: @hostel_form.chalan_number, city: @hostel_form.city, cnic_image: @hostel_form.cnic_image, cnic_number: @hostel_form.cnic_number, emergency_mb_number: @hostel_form.emergency_mb_number, father_name: @hostel_form.father_name, form_number: @hostel_form.form_number, hostel_fees: @hostel_form.hostel_fees, image: @hostel_form.image, local: @hostel_form.local, mobile_number: @hostel_form.mobile_number, name: @hostel_form.name, new_block_no: @hostel_form.new_block_no, new_room_no: @hostel_form.new_room_no, permanent_address: @hostel_form.permanent_address, postel_address: @hostel_form.postel_address, previous_block_no: @hostel_form.previous_block_no, previous_room_no: @hostel_form.previous_room_no, religion: @hostel_form.religion, session_ending: @hostel_form.session_ending, session_starting: @hostel_form.session_starting, university_registration_number: @hostel_form.university_registration_number } }
    end

    assert_redirected_to hostel_form_url(HostelForm.last)
  end

  test "should show hostel_form" do
    get hostel_form_url(@hostel_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_hostel_form_url(@hostel_form)
    assert_response :success
  end

  test "should update hostel_form" do
    patch hostel_form_url(@hostel_form), params: { hostel_form: { bank: @hostel_form.bank, blood_group: @hostel_form.blood_group, chalan_number: @hostel_form.chalan_number, city: @hostel_form.city, cnic_image: @hostel_form.cnic_image, cnic_number: @hostel_form.cnic_number, emergency_mb_number: @hostel_form.emergency_mb_number, father_name: @hostel_form.father_name, form_number: @hostel_form.form_number, hostel_fees: @hostel_form.hostel_fees, image: @hostel_form.image, local: @hostel_form.local, mobile_number: @hostel_form.mobile_number, name: @hostel_form.name, new_block_no: @hostel_form.new_block_no, new_room_no: @hostel_form.new_room_no, permanent_address: @hostel_form.permanent_address, postel_address: @hostel_form.postel_address, previous_block_no: @hostel_form.previous_block_no, previous_room_no: @hostel_form.previous_room_no, religion: @hostel_form.religion, session_ending: @hostel_form.session_ending, session_starting: @hostel_form.session_starting, university_registration_number: @hostel_form.university_registration_number } }
    assert_redirected_to hostel_form_url(@hostel_form)
  end

  test "should destroy hostel_form" do
    assert_difference('HostelForm.count', -1) do
      delete hostel_form_url(@hostel_form)
    end

    assert_redirected_to hostel_forms_url
  end
end

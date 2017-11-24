require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { address: @student.address, age: @student.age, bank: @student.bank, blood_group: @student.blood_group, cell_no: @student.cell_no, chalan_no: @student.chalan_no, city: @student.city, cnic_no: @student.cnic_no, departmen_id: @student.departmen_id, emer_cell_no: @student.emer_cell_no, father_name: @student.father_name, hostel_block_id: @student.hostel_block_id, hostel_fees: @student.hostel_fees, image: @student.image, local: @student.local, name: @student.name, nationality: @student.nationality, pay_date: @student.pay_date, room_id: @student.room_id, session_id: @student.session_id, university_regestration_no: @student.university_regestration_no } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address: @student.address, age: @student.age, bank: @student.bank, blood_group: @student.blood_group, cell_no: @student.cell_no, chalan_no: @student.chalan_no, city: @student.city, cnic_no: @student.cnic_no, departmen_id: @student.departmen_id, emer_cell_no: @student.emer_cell_no, father_name: @student.father_name, hostel_block_id: @student.hostel_block_id, hostel_fees: @student.hostel_fees, image: @student.image, local: @student.local, name: @student.name, nationality: @student.nationality, pay_date: @student.pay_date, room_id: @student.room_id, session_id: @student.session_id, university_regestration_no: @student.university_regestration_no } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end

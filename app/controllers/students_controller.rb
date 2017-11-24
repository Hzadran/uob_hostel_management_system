class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]


  # GET /products
  # GET /products.json
  def index
    @students = Student.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @student = Student.new
    @student.upc = params[:upc]
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_barcode
    @student = Student.find_or_initialize_by(upc: params[:upc])
    unless @student.new_record?
      redirect_to @student
    else
      redirect_to new_student_path(upc: params[:upc])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:image, :upc, :name, :father_name, :cnic_no, :cell_no, :emer_cell_no, :age, :city, :local, :hostel_fees, :chalan_no, :pay_date, :bank, :nationality, :address, :blood_group, :university_regestration_no, :session_id, :hostel_block_id, :departmen_id, :room_id)
    end
end

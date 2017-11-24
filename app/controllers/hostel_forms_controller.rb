class HostelFormsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hostel_form, only: [:show]

  # GET /hostel_forms
  # GET /hostel_forms.json
  def index
    @hostel_forms = HostelForm.all

    respond_to do |format|
      format.html
      format.pdf do
        send_data generate_hostel_forms_report(@hostel_forms), filename: 'hostel_form.pdf',
                                                 type: 'application/pdf',
                                                 disposition: 'attachment'
      end
    end
  end

  # GET /hostel_forms/1
  # GET /hostel_forms/1.json
  def show
  end

  # GET /hostel_forms/new
  def new
    @hostel_form = HostelForm.new
  end

  # GET /hostel_forms/1/edit
  def edit
  end

  # POST /hostel_forms
  # POST /hostel_forms.json
  def create
    @hostel_form = HostelForm.new(hostel_form_params)

    respond_to do |format|
      if @hostel_form.save
        format.html { redirect_to @hostel_form }
        format.json { render :show, status: :created, location: @hostel_form }
      else
        format.html { render :new }
        format.json { render json: @hostel_form.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /hostel_forms/1
  # PATCH/PUT /hostel_forms/1.json
  def update
    respond_to do |format|
      if @hostel_form.update(hostel_form_params)
        format.html { redirect_to @hostel_form, notice: 'Hostel form was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostel_form }
      else
        format.html { render :edit }
        format.json { render json: @hostel_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostel_forms/1
  # DELETE /hostel_forms/1.json
  def destroy
    @hostel_form.destroy
    respond_to do |format|
      format.html { redirect_to hostel_forms_url, notice: 'Hostel form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostel_form
      @hostel_form = HostelForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostel_form_params
      params.require(:hostel_form).permit(:image, :cnic_image, :name, :father_name, :department, :nationality, :date_of_birth, :cnic_number, :mobile_number, :emergency_mb_number, :university_registration_number, :session, :hostel_fees, :chalan_number, :pay_date, :bank, :local, :city, :postel_address, :permanent_address, :religion, :blood_group, :previous_block_no, :previous_room_no, :new_block_no, :new_room_no)
    end
 def generate_hostel_forms_report(hostel_forms)
      report = Thinreports::Report.new layout: File.join(Rails.root, 'app', 'reports', 'hostel_form', 'list.tlf')

      tasks.each do |task|
        report.list.add_row do |row|
          row.values no: hostel_form.id,
                     name: hostel_form.name,
                     father_name: hostel_form.father_name,
                     department: hostel_form.department,
                     nationality: hostel_form.nationality,
                     date_of_birth: hostel_form.date_of_bith,
                     cnic_number: hostel_form.cnic_number,
                     mobile_number: hostel_form.mobile_number,
                     emergency_mb_number: hostel_form.emergency_mb_number,
                     university_registration_number: hostel_form.university_registration_number,
                     session: hostel_form.session,
                     hostel_fees: hostel_form.hostel_fees,
                     chalan_number: hostel_form.chalan_number,
                     pay_date: hostel_form.pay_date,
                     bank: hostel_form.bank,
                     local: hostel_form.local,
                     city: hostel_form.city,
                     postel_address: hostel_form.postel_address,
                     permanent_address: hostel_form.permanent_address,
                     religion: hostel_form.religion,
                     blood_group: hostel_form.blood_group,
                     previous_block_no: hostel_form.previous_block_no,
                     previous_room_no: hostel_form.previous_room_no,
                     new_block_no: hostel_form.new_block_no,
                     new_room_no: hostel_form.new_room_no,
                      state: task.done? ? 'done' : 'yet'
          row.item(:name).style(:color, 'red') unless hostel_forms.done?
        end
      end

      report.generate
    end
end

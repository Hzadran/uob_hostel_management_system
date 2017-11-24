class HostelBlocksController < ApplicationController
  before_action :set_hostel_block, only: [:show, :edit, :update, :destroy]

  # GET /hostel_blocks
  # GET /hostel_blocks.json
  def index
    @hostel_blocks = HostelBlock.all
  end

  # GET /hostel_blocks/1
  # GET /hostel_blocks/1.json
  def show
  end

  # GET /hostel_blocks/new
  def new
    @hostel_block = HostelBlock.new
  end

  # GET /hostel_blocks/1/edit
  def edit
  end

  # POST /hostel_blocks
  # POST /hostel_blocks.json
  def create
    @hostel_block = HostelBlock.new(hostel_block_params)

    respond_to do |format|
      if @hostel_block.save
        format.html { redirect_to @hostel_block, notice: 'Hostel block was successfully created.' }
        format.json { render :show, status: :created, location: @hostel_block }
      else
        format.html { render :new }
        format.json { render json: @hostel_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostel_blocks/1
  # PATCH/PUT /hostel_blocks/1.json
  def update
    respond_to do |format|
      if @hostel_block.update(hostel_block_params)
        format.html { redirect_to @hostel_block, notice: 'Hostel block was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostel_block }
      else
        format.html { render :edit }
        format.json { render json: @hostel_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostel_blocks/1
  # DELETE /hostel_blocks/1.json
  def destroy
    @hostel_block.destroy
    respond_to do |format|
      format.html { redirect_to hostel_blocks_url, notice: 'Hostel block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostel_block
      @hostel_block = HostelBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostel_block_params
      params.require(:hostel_block).permit(:block_no, :block_warden, :location)
    end
end

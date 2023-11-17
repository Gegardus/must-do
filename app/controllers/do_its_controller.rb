class DoItsController < ApplicationController
  def index
    @do_its = DoIt.all
  end

  def new
    @do_it = DoIt.new
  end

  def create
    @do_it = DoIt.new(do_it_params)
    if @do_it.save
      respond_to do |format|
        format.html { redirect_to do_its_path }
        format.turbo_stream
      end
    else
      render turbo_stream: turbo_stream.update("errors", partial: "shared/error_messages", locals: { errors: @to_do.errors.full_messages }), status: :unprocessable_entity
    end
  end

  def edit
    @do_it = DoIt.find(params[:id])
  end

  def update
    @do_it = DoIt.find(params[:id])
    if @do_it.update(do_it_params)
      redirect_to do_its_path
    else
      render :edit, status: 422
    end
  end
  
  def destroy
    @do_it = DoIt.find(params[:id])
    @do_it.destroy

    respond_to do |format|
      format.html { redirect_to do_its_path }
      format.turbo_stream
    end
  end

  private

  def do_it_params
    params.require(:do_it).permit(:title)
  end
end

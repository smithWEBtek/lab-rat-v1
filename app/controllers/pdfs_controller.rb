class PdfsController < ApplicationController
  
  def reset_pdfs
    Pdf.reset_pdfs
    redirect_to pdfs_path
  end

  def import_pdfs
    Pdf.add_pdfs
    redirect_to pdfs_path
  end

  def download_pdf
    @pdf = Pdf.find_by_id(params[:id])
    pdf_filename = Rails.root + "app/assets/pdfs/" + @pdf.name
    send_file(pdf_filename, disposition: "download", type: "application/pdf")
  end
 
  def new_distill_pdf
    @pdf = Pdf.new 
    @doc = Doc.new
    render 'pdfs/distill_pdf'
  end

  def distill_pdf
    @pdf = Pdf.find_or_create_by(name: params[:name], location: 'app/assets/pdfs/')
    if @pdf.save
      redirect_to pdf_path(@pdf)
    else
      render 'pdfs/create_pdf'
    end
  end

  def index
    @pdfs = Pdf.all 
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @pdfs }
    end
  end

  def show
    @pdf = Pdf.find_by_id(params[:id])
    pdf_filename = Rails.root + "app/assets/pdfs/" + @pdf.name
    send_file(pdf_filename, :filename => "@pdf.name.gsub('.pdf','')", :disposition => 'inline', :type => "application/pdf")
  # send_file(pdf_filename, disposition: "inline", type: "application/pdf")
    # send_file(pdf_filename, :filename => "your_document.pdf", :disposition => 'inline', :type => "application/pdf")
  end

  def new
    @pdf = Pdf.new 
  end

  def create
    @pdf = Pdf.create(pdf_params)
    if @pdf.save
      flash[:message] = 'Pdf created.'
      binding.pry
      redirect_to pdf_path(@pdf)
    else
      render :new
    end
  end

  def edit
    @pdf = Pdf.find_by_id(params[:id])
  end

  def update
    @pdf = Pdf.find_by_id(params[:id])
    @pdf.update(pdf_params)
    if @pdf.save
      flash[:message] = 'Pdf updated.'
      redirect_to pdf_path(@pdf)
    else
      render :edit
    end
  end

  def destroy
    @pdf = Pdf.find_by_id(params[:id])
    @pdf.destroy
    redirect_to pdfs_path
  end

  private

  def pdf_params
    params.require(:pdf).permit(:name, location: 'app/assets/pdfs')
  end
end

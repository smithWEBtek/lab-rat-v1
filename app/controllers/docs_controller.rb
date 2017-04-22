class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]

  def index
    @docs = Doc.all 
  end

  def show
  end

  def new
    @doc = Doc.new
  end
  
  def edit
  end

  def update
    @doc.update(doc_params)
    if @doc.save
      redirect_to doc_path(@doc), message: "Doc updated."
    else
      render :edit, message: "Doc NOT updated, please try again."
    end
  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to doc_path(@doc), message: "Doc created."
    else
      render :new, message: "Doc NOT created, please try again."
    end
  end

  def destroy
    @doc.delete
    redirect_to docs_path
  end

  private
    def set_doc
      @doc = Doc.find_by_id(params[:id])
    end

    def doc_params
      params.require(:doc).permit(:name, :format, :location)
    end
end


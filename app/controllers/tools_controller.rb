class ToolsController < ApplicationController

  def bookmarks
    Scrape.bookmarks
    render :bookmarks
  end

  def show_pdf 
    @pdf = Pdf.find(params[:id])
    render file: "/assets/pdfs/"+ @pdf
  end

  def import_pdfs
    Pdf.add_pdfs
    redirect_to pdfs_path
  end

# import companies from scraper
  def import_new_companies
    Scrape.new_companies
    redirect_to companies_path
  end

# truncate companies table, reset primary key index
  def trunc_reset
    Company.trunc_reset
    redirect_to companies_path
  end

  def new_scrape
    redirect_to 'scrapers/new'
  end

  def test
    render 'test'
  end
 
end

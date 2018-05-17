class PageLinksController < ApplicationController
  before_action :set_page_link, only: [:show, :edit, :update, :destroy]
  before_action :set_layout

  # GET /page_links
  # GET /page_links.json
  def index
    @page_links = PageLink.all
  end

  # GET /page_links/1
  # GET /page_links/1.json
  def show
  end

  # GET /page_links/new
  def new
    binding.pry
    @page_link = PageLink.new(scope: @scope)
  end

  # GET /page_links/1/edit
  def edit
  end

  # POST /page_links
  # POST /page_links.json
  def create
    @page_link = PageLink.new(page_link_params)

    respond_to do |format|
      if @page_link.save
        format.html { redirect_to @page_link, notice: 'Page link was successfully created.' }
        format.json { render :show, status: :created, location: @page_link }
      else
        format.html { render :new }
        format.json { render json: @page_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_links/1
  # PATCH/PUT /page_links/1.json
  def update
    respond_to do |format|
      if @page_link.update(page_link_params)
        format.html { redirect_to @page_link, notice: 'Page link was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_link }
      else
        format.html { render :edit }
        format.json { render json: @page_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_links/1
  # DELETE /page_links/1.json
  def destroy
    @page_link.destroy
    respond_to do |format|
      format.html { redirect_to page_links_url, notice: 'Page link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_layout
      @scope = params[:page]
      @page_links = PageLink.where(page_id: params[:page])
      @sub_layout = "layouts/sub_layouts/#{params[:page]}"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_page_link
      @page_link = PageLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_link_params
      params.require(:page_link).permit(:scope, :name, :position, document_attributes: [:id, :title, :text])
    end
end

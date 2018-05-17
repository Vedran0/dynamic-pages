class PageLinksController < ApplicationController
  before_action :set_page_link, only: [:show, :edit, :update, :destroy]
  before_action :set_layout

  def index
    @page_links = PageLink.all
  end

  def show
  end

  def new
    @page_link = PageLink.new(scope: @scope, resource: params[:resource], page_link_id: params[:page_link_id])
  end

  def edit
  end

  def create
    @page_link = PageLink.new(page_link_params)
    respond_to do |format|
      if @page_link.save
        format.html { redirect_to @page_link, notice: 'Page link was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @page_link.update(page_link_params)
        format.html { redirect_to @page_link, notice: 'Page link was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @page_link.destroy
    respond_to do |format|
      format.html { redirect_to page_links_url, notice: 'Page link was successfully destroyed.' }
    end
  end

  private

    def set_layout
      @scope = params[:page]
      @page_links = PageLink.where(page_id: params[:page])
      @sub_layout = true
    end

    def set_page_link
      @page_link = PageLink.find(params[:id])
    end

    def page_link_params
      params.require(:page_link).permit(:scope, :name, :position, :page_link_id, :resource, :submenue, document_attributes: [:id, :title, :text], attachment_attributes: [:id, :file])
    end
end

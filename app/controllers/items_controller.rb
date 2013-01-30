class ItemsController < ApplicationController
  before_filter :find_item, except: [:index, :new, :create, :sort]
  # GET /items
  # GET /items.json
  def index
    @items = current_user.items.order(:position)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = current_user.items.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
      format.js
    end
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.build(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
      format.js
    end
  end

  def sort
    params[:item].each_with_index do |id,index|
      Item.update_all({position: index+1},{id: id})
    end
    render nothing: true
  end

  private
  def find_item
    @item = current_user.items.find(params[:id])
  end
end

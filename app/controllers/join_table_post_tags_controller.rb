class JoinTablePostTagsController < ApplicationController
  before_action :set_join_table_post_tag, only: [:show, :edit, :update, :destroy]

  # GET /join_table_post_tags
  # GET /join_table_post_tags.json
  def index
    @join_table_post_tags = JoinTablePostTag.all
  end

  # GET /join_table_post_tags/1
  # GET /join_table_post_tags/1.json
  def show
  end

  # GET /join_table_post_tags/new
  def new
    @join_table_post_tag = JoinTablePostTag.new
  end

  # GET /join_table_post_tags/1/edit
  def edit
  end

  # POST /join_table_post_tags
  # POST /join_table_post_tags.json
  def create
    @join_table_post_tag = JoinTablePostTag.new(join_table_post_tag_params)

    respond_to do |format|
      if @join_table_post_tag.save
        format.html { redirect_to @join_table_post_tag, notice: 'Join table post tag was successfully created.' }
        format.json { render :show, status: :created, location: @join_table_post_tag }
      else
        format.html { render :new }
        format.json { render json: @join_table_post_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_post_tags/1
  # PATCH/PUT /join_table_post_tags/1.json
  def update
    respond_to do |format|
      if @join_table_post_tag.update(join_table_post_tag_params)
        format.html { redirect_to @join_table_post_tag, notice: 'Join table post tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @join_table_post_tag }
      else
        format.html { render :edit }
        format.json { render json: @join_table_post_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_post_tags/1
  # DELETE /join_table_post_tags/1.json
  def destroy
    @join_table_post_tag.destroy
    respond_to do |format|
      format.html { redirect_to join_table_post_tags_url, notice: 'Join table post tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_post_tag
      @join_table_post_tag = JoinTablePostTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def join_table_post_tag_params
      params[:join_table_post_tag]
    end
end

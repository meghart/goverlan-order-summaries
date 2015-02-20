class OrderSummariesController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :logged_in_using_omniauth?, only: [:index, :new, :show, :edit, :update, :destroy]
  before_action :set_order_summary, only: [:show, :edit, :update, :destroy]
  
  # GET /order_summaries
  # GET /order_summaries.json
  def index
    @order_summaries = OrderSummary.all
    
    if params[:search]
      @order_summaries = OrderSummary.search(params[:search]).order("created_at DESC").paginate(page: params[:page],:per_page => 10)
    else
      @order_summaries = OrderSummary.order(:status, created_at: :asc).paginate(page: params[:page],:per_page => 10)
    end
  end

  # GET /order_summaries/1
  # GET /order_summaries/1.json
  def show
    def send_order_summary_mail
      @order_summary = OrderSummary.find(params[:id])
      
      OrderSummaryMailer.order_summary_email(@order_summary).deliver
      flash[:info] = "Order Summary has been sent!"
      
      @order_summary.update(:status => "Sent")
      
      redirect_to "/order_summaries/index"
    end
  end

  # GET /order_summaries/new
  def new
    @order_summary = OrderSummary.new
  end

  # GET /order_summaries/1/edit
  def edit
  end

  # GET /order_summaries/login
  def login
  end
  

  # POST /order_summaries
  # POST /order_summaries.json
  def create
    @order_summary = OrderSummary.new(order_summary_params)

    respond_to do |format|
      if @order_summary.save
        #OrderSummaryMailer.order_summary_email(@order_summary).deliver
        format.html {
          flash[:success] = "Order Summary Created!"
          redirect_to @order_summary
        }
        format.json { render :show, status: :created, location: @order_summary }
      else
        format.html { render :new }
        format.json { render json: @order_summary.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /order_summaries/1
  # PATCH/PUT /order_summaries/1.json
  def update
    respond_to do |format|
      if @order_summary.update(order_summary_params)
        format.html { 
          flash[:warning] = "Order Summary Updated!"
          redirect_to @order_summary
        }
        format.json { render :show, status: :ok, location: @order_summary }
      else
        format.html { render :edit }
        format.json { render json: @order_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_summaries/1
  # DELETE /order_summaries/1.json
  def destroy
    @order_summary.destroy
    respond_to do |format|
      format.html {
        flash[:danger] = "Order Summary Destroyed!"
        redirect_to order_summaries_url
      }
      format.json { head :no_content }
    end
  end

  private
    # Verify user is logged in to view Order Summaries
    def logged_in_using_omniauth?
      unless session[:userinfo].present?
        render 'login'
        #if request.original_url == "https://goverlan-order-summaries.herokuapp.com/"
          #do nothing
        #else
          #flash.now[:warning] = "You must log in to access this site."
          #render 'login'
        #end
        # Redirect to page that has the login here
      end
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_order_summary
      @order_summary = OrderSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_summary_params
      params.require(:order_summary).permit(:invoice, :account_name, :salesforce_url, :email, :reseller, :purchase_type, :product, :quantity, :activation, :support_start, :support_end, :status)
    end
end

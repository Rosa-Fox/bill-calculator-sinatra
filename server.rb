class BillCalulcatorApp < Sinatra::Application
  set :partial_template_engine, :erb
  set :static, true

  get '/' do
    erb :index
  end

  get '/amount' do
    @bill_amount = params[:bill].to_i
    @tip_amount = params[:tip].to_i
    @percent = @bill_amount / 100 * @tip_amount
    @total = @bill_amount + @percent
    erb :amount
  end
end

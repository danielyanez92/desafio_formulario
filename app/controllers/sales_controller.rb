class SalesController < ApplicationController

  def index
    @sale = Sale.all
  end
  def new
    @sale = Sale.new

  end

  def create
    detail = params[:sale][:detail]
    category = params[:sale][:category]
    value = params[:sale][:value].to_f
    discount = params[:sale][:discount].to_i
    exento = (params[:sale][:iva]== '1')

    total= value * (1 - discount/100.0)
    sale = Sale.new

    if !exento
      sale.tax = 19
      total*= 1.19
    else
      sale.tax=0
    end
    sale.detail = detail
    sale.discount = discount
    sale.value = value
    sale.total = total
    sale.category = category
    sale.cod = DateTime.now.to_i

    sale.save
    if sale.save
      redirect_to sales_done_path, notice: 'Se almaceno registro con exito'
    else
      redirect_to root_path notice: 'No se pudo almacenar !'
    end

  end
  def done
    @sale=Sale.all

  end
end

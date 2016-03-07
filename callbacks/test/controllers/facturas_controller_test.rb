require 'test_helper'

class FacturasControllerTest < ActionController::TestCase
  setup do
    @factura = facturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factura" do
    assert_difference('Factura.count') do
      post :create, factura: { cantidad: @factura.cantidad, cliente: @factura.cliente, codigo: @factura.codigo, f_vencimiento: @factura.f_vencimiento, iva: @factura.iva, nit_cliente: @factura.nit_cliente, nit_vendedor: @factura.nit_vendedor, precio_u: @factura.precio_u, total: @factura.total, vendedor: @factura.vendedor }
    end

    assert_redirected_to factura_path(assigns(:factura))
  end

  test "should show factura" do
    get :show, id: @factura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factura
    assert_response :success
  end

  test "should update factura" do
    patch :update, id: @factura, factura: { cantidad: @factura.cantidad, cliente: @factura.cliente, codigo: @factura.codigo, f_vencimiento: @factura.f_vencimiento, iva: @factura.iva, nit_cliente: @factura.nit_cliente, nit_vendedor: @factura.nit_vendedor, precio_u: @factura.precio_u, total: @factura.total, vendedor: @factura.vendedor }
    assert_redirected_to factura_path(assigns(:factura))
  end

  test "should destroy factura" do
    assert_difference('Factura.count', -1) do
      delete :destroy, id: @factura
    end

    assert_redirected_to facturas_path
  end
end

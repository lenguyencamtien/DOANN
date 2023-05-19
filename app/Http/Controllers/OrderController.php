<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use Illuminate\Support\Facades\Session;
use App\Models\Shipping;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Customer;
use App\Models\Product;
use PDF;
use Illuminate\Support\Facades\Redirect;
session_start();

class OrderController extends Controller
{
    public function manage_order(){
        $order = Order::orderby('created_at','DESC')->paginate(8);
		return view('admin.manage_order')->with(compact('order'));
    }
    public function view_order($order_code){
		$order_details = OrderDetails::with('product')->where('order_code',$order_code)->get();
		$order = Order::where('order_code',$order_code)->get();
		foreach($order as $key => $ord){
			$customer_id = $ord->customer_id;
			$shipping_id = $ord->shipping_id;
			// $order_status = $ord->order_status;
		}
		$customer = Customer::where('customer_id',$customer_id)->first();
		$shipping = Shipping::where('shipping_id',$shipping_id)->first();

		$order_details_product = OrderDetails::with('product')->where('order_code', $order_code)->get();
		
		return view('admin.view_order')->with(compact('order_details_product','customer','shipping'));

	}
	public function delete_order($order_id){
        
        DB::table('tbl_order')->where('order_id',$order_id)->delete();
        Session::put('message','Xoá đơn hàng thành công');
        return Redirect::to('manage-order');
    }
    public function print_order($checkout_code){
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($this->print_order_convert($checkout_code));
        return $pdf->stream();
    }
    public function print_order_convert($checkout_code){
        $order_details = OrderDetails::with('product')->where('order_code',$checkout_code)->get();
		$order = Order::where('order_code',$checkout_code)->get();
		foreach($order as $key => $ord){
			$customer_id = $ord->customer_id;
			$shipping_id = $ord->shipping_id;
			// $order_status = $ord->order_status;
		}
		$customer = Customer::where('customer_id',$customer_id)->first();
		$shipping = Shipping::where('shipping_id',$shipping_id)->first();

        $order_details_product = OrderDetails::with('product')->where('order_code', $checkout_code)->get();

        $output = '';
        $output.='<style>body{
			font-family: DejaVu Sans;
		}
		.table-styling{
			border:1px solid #000;
		}
		.table-styling tbody tr td{
			border:1px solid #000;
		}
		</style>
		<h2><center>CƠ SỞ SẢN XUẤT BÁNH MỲ, BÁNH NGỌT MIMOSA</center></h2>
		<h4><center>0931 60 20 60 - 0906 449 508 - Mr Quân</center></h4>
		<p>Người Đặt Hàng:</p>
		<table class="table-styling">
				<thead>
					<tr>
						<th>Tên khách đặt</th>
						<th>Số điện thoại</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>';
				
		$output.='		
					<tr>
						<td>'.$customer->customer_name.'</td>
						<td>'.$customer->customer_phone.'</td>
						<td>'.$customer->customer_email.'</td>
						
					</tr>';
				

		$output.='				
				</tbody>
			
		</table>

		<p>Ship Hàng Đến:</p>
			<table class="table-styling">
				<thead>
					<tr>
						<th>Tên người nhận</th>
						<th>Địa chỉ</th>
						<th>Sdt</th>
						<th>Email</th>
						<th>Ghi chú</th>
					</tr>
				</thead>
				<tbody>';
				
		$output.='		
					<tr>
						<td>'.$shipping->shipping_name.'</td>
						<td>'.$shipping->shipping_address.'</td>
						<td>'.$shipping->shipping_phone.'</td>
						<td>'.$shipping->shipping_email.'</td>
						<td>'.$shipping->shipping_note.'</td>
						
					</tr>';
				

		$output.='				
				</tbody>
			
		</table>

		<p>Đơn Hàng Đặt:</p>
			<table class="table-styling">
				<thead>
					<tr>
						<th>Tên sản phẩm</th>
						
						<th>Số lượng</th>
						<th>Giá sản phẩm</th>
						<th>Thành tiền</th>
					</tr>
				</thead>
				<tbody>';
			
				$total = 0;

				foreach($order_details_product as $key => $product){

					$subtotal = $product->product_price*$product->product_sales_quantity;
					$total+=$subtotal;

		$output.='		
					<tr>
						<td>'.$product->product_name.'</td>
						<td>'.$product->product_sales_quantity.'</td>
						<td>'.number_format($product->product_price,0,',','.').'đ'.'</td>
						<td>'.number_format($subtotal,0,',','.').'đ'.'</td>
						
					</tr>';
				}

				

		$output.= '<tr>
				<td colspan="2">
					<p>Thanh toán : '.number_format($total ,0,',','.').'đ'.'</p>
				</td>
		</tr>';
		$output.='				
				</tbody>
			
		</table>

		<p><center>Ký tên</center></p>
			<table>
				<thead>
					<tr>
						<th width="200px">Người lập phiếu</th>
						<th width="800px">Người nhận</th>
						
					</tr>
				</thead>
				<tbody>';
						
		$output.='				
				</tbody>
        </table>';
        return $output;
    }

}

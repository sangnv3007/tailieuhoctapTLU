<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PDF;
use App\Partner;
class PDFController extends Controller
{
	public function getPDF(){
		$pdf=PDF::loadView('admin/pdf/order');
		return $pdf->download('admin/pdf/order.pdf');
	}
}
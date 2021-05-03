<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Status;
use App\Feedback;
class FeedbackController extends Controller
{
    //
    public function getDanhsach(){
        $status=Status::all();
        $feedback=Feedback::all();
        return view('admin.feedback.danhsach',['feedback'=>$feedback,'status'=>$status]);
    }
    public function getXoa($id){
        $feedback=Feedback::find($id);
        $feedback->delete();
        return redirect('admin/feedback/danhsach')->with("thongbao",'Xóa thành công');
   }
    public function getSua($id){
        $status= Status::all();
        $feedback=Feedback::find($id);
        return view ('admin.feedback.sua',['feedback'=>$feedback,'status'=>$status]);
    }
     public function postSua(Request $request,$id){
        $feedback=Feedback::find($id);
        $feedback->id_users=$request->id_users;
        $feedback->id_status=$request->theloai;
        $feedback->id_product=$request->id_product;
        $feedback->content=$request->ten;
        $feedback->created_at=$request->created;
        $feedback->save();
        return redirect('admin/feedback/danhsach')->with('thongbao','Sửa thành công');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Auth;
use App\Models\Post;
use App\Http\Requests;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class PostController extends Controller
{
	 public function AuthLogin(){

        $admin_id = Session::get('admin_id');
        if($admin_id) {
            return Redirect::to('dashboard');
        } else {
            return Redirect::to('admin')->send();
        }
           
    }   
    public function post(){
        $all_post = Post::orderBy('post_id','DESC')->paginate(8);
        return view('pages.news')->with(compact('all_post',$all_post));


    }
    public function add_post(){
        $post = Post::orderBy('post_id','DESC')->get(); 
        return view('admin.post.add_post');
    }
        
    public function save_post(Request $request){
        $this->AuthLogin();
    	$data = $request->all();
    	$post = new Post();

    	$post->post_title = $data['post_title'];
    	$post->post_desc = $data['post_desc'];
    	$post->post_content = $data['post_content'];
    	$post->post_meta_desc = $data['post_meta_desc'];
    	$post->post_meta_keywords = $data['post_meta_keywords'];
    	$post->post_status = $data['post_status'];

        $get_image = $request->file('post_image');
      
        if($get_image){
            $get_name_image = $get_image->getClientOriginalName(); //lay ten của hình ảnh
            $name_image = current(explode('.',$get_name_image));

            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();

            $get_image->move('public/uploads/post',$new_image);

            $post->post_image = $new_image;

           	$post->save();
            Session::put('message','Thêm bài viết thành công');
            return redirect()->back();
        }else{
        	Session::put('message','Làm ơn thêm hình ảnh');
            return redirect()->back();
        }
    }
        public function all_post(){
            $all_post = Post::orderBy('post_id','DESC')->paginate(8);
            return view('admin.post.list_post')->with(compact('all_post',$all_post));
    
        }
        public function delete_post($post_id){
            $this->AuthLogin();
            $post = Post::find($post_id);
            $post_image = $post->post_image;
    
            if($post_image){
                $path ='public/uploads/post/'.$post_image;
                unlink($path);
            }
            $post->delete();
            
           
            Session::put('message','Xóa bài viết thành công');
            return redirect()->back();
        }
        
           public function edit_post($post_id){
               $post = Post::find($post_id);
               return view('admin.post.edit_post')->with(compact('post'));
           }
           public function update_post(Request $request,$post_id){
               $this->AuthLogin();
            $data = $request->all();
            $post = Post::find($post_id);
    
            $post->post_title = $data['post_title'];
            $post->post_desc = $data['post_desc'];
            $post->post_content = $data['post_content'];
            $post->post_meta_desc = $data['post_meta_desc'];
            $post->post_meta_keywords = $data['post_meta_keywords'];
            $post->post_status = $data['post_status'];
    
            $get_image = $request->file('post_image');
          
            if($get_image){
                //xoa anh cu
                $post_image_old = $post->post_image;
                $path ='public/uploads/post/'.$post_image_old;
                unlink($path);
                //cap nhat anh moi
                $get_name_image = $get_image->getClientOriginalName(); //lay ten của hình ảnh
                $name_image = current(explode('.',$get_name_image));
                $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
                $get_image->move('public/uploads/post',$new_image);
                $post->post_image = $new_image; 
            }
    
            $post->save();
            Session::put('message','Cập nhật bài viết thành công');
            return redirect()->back();
           }
      

        
    }
    
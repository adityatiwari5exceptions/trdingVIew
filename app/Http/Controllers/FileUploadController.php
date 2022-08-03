<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use LDAP\Result;
use App\Models\Image;
class FileUploadController extends Controller
{
    public function Upload(Request $request)
    {
         $Result = $request->file('image_url')->store('public/apiDoc');
        $image  =  new Image();
        $image->image_name = $request->image_name;
        $image->image_url = $request->image_url->hashName();
        
        $res=$image->save();
        // echo "<pre>";
        // print_r($image);die();
        if($res){
            return['res'=>'image store database'];
        }
        else{
            return['res'=>'image Not store database'];
        }
        // return ['Result'=>$Result];
    }
    public function Upload_list()
    {
        $image['Image'] = Image::select("image_id", "image_name","image_url")->get();
        return $image ;
    }
    public function Update_image(Request $request)
    {   
        // $image_url = $request->file('image_url')->getClientOriginalName();
        $image_url = $request->file('image_url')->store('public/apiDoc');
         $image  =  new Image();
         $image->image_name = $request->image_name;
        // $image->image_url = $image_url;
        $image->image_url = $image_url;

         $image->save();
         echo "<pre>";
         print_r($image);die();
         if($image)
         {
            return("Image Insert in DataBase");
         }
         else{
            return("Data Not Insert Data Base");
         }
    
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\SendTelegramService;
use Illuminate\Support\Facades\Validator;
/**
 * Class ContactController
 * @package App\Http\Controllers
 */
class ContactController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        return view('contact.index');
    }

    /**
     * @param Request $request
     * @return $this
     */
    public function send(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3|max:40',
            'email' => 'required|email',
            'message' => 'required|min:10:max:200'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'failed',
                'messages' => $validator->messages()
            ]);
        }

        $message = "You have new message from site!\nName: {$request->post('name')}\nE-Mail: {$request->post('email')}\nMessage: {$request->post('message')}";

        SendTelegramService::send($message);

        return response()->json([
            'status' => 'success'
        ]);

        return redirect('/contact')->with('success', 'Your message successfully sent!');
    }

    public function feedback(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3|max:40',
            'phone' => 'required|min:5|max:13'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'failed',
                'messages' => $validator->messages()
            ]);
        }

        $message = "You have new message from site!\nName: {$request->post('name')}\nPhone: {$request->post('phone')}";

        SendTelegramService::send($message);

        return response()->json([
            'status' => 'success'
        ]);
    }
}

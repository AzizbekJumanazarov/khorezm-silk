<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\SendTelegramService;

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
        $data = $request->validate([
            // 'name' => 'required|min:3|max:100',
            // 'email' => 'required|email',
            'message' => 'required|max:1024',
        ]);

        /*$message = "You have new message from site:\nName: {$data['name']}\nE-mail: {$data['email']}\nMessage: {$data['message']}";*/
        
        $message = "You have new message from site:\n{$data['message']}";

        SendTelegramService::send($message);

        return redirect('/contact')->with('success', 'Your message successfully sent!');
    }
}

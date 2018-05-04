<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class RestorePassword extends Mailable
{
    use Queueable, SerializesModels;

    protected $key, $email;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($key, $email) {

        $this->key = $key;
        $this->email = $email;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build() {

        return $this->view('emails.restore', [
                                                'key' => $this->key,
                                                'email' => $this->email,
                                            ])
                    ->subject('Restore Password');
    }

}

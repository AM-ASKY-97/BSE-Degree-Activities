<?php

namespace App\Controllers;

class Lab extends BaseController
{
    public function index()
    {
        $this->home();
    }

    public function Home()
    {
        echo view('Heder');
        echo view('Home');
        echo view('footer');
    }

    public function Places()
    {
        echo view('Heder');
        echo view('Places');
        echo view('footer');
    }

    public function Contact()
    {
        echo view('Heder');
        echo view('Contact');
        echo view('footer');
    }
}

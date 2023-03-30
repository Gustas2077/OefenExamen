<?php

namespace App\Controllers;

use App\Libraries\BaseController;

class Homepages extends BaseController
{
  public function index()
  {
    $this->setData([
      'title' => 'Home',
    ]);
    $this->view('index');
  }
}

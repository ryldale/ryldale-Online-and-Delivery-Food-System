<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class About extends CI_Controller {

	public function index()
	{
		$this->load->view('front/partials/header');
		$this->load->view('front/about');
		$this->load->view('front/partials/footer');
	}
}

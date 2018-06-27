<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Package extends MX_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct() {
		parent::__construct();
		//sebelum menggunakan model, maka model harus di load terlebih dahulu
		$this->load->model(array('Package_model' => 'package_model'));
	}

	public function index()
	{
		$data['paket'] = $this->package_model->getAllData()->result_array();
		$data['title'] = 'Package Page';
		$data['view'] = 'Package/main';
		$this->load->view('template', $data);
	}
	public function add() {
		$data['title'] = 'Package Page Add';
		$data['view'] = 'Package/add';
		$this->load->view('template', $data);
	}
}

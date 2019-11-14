<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Penjualan extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->library('fungsi');
        $this->load->model('stok_model');
    }

    function cart()
    {
    	//TODO: melakukan pembelian
    }

    function addcart($id_barang, $qty)
    {
    	//TODO: melakukan penambahan barang ke dalam cart
    }

    function updatecart()
    {
    	//TODO: update cart
    }

	function removecart($row)
	{
    	//TODO: menghapus barang dari cart
	}
    
	function cartdestroy()
	{
    	//TODO: menghapus cart
	}

	function caribarang()
	{
    	//TODO: cari barang
	}

	function transaction()
	{
    	//TODO: melakukan pembelian barang
	}
}
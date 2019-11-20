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
		//Fungsi penambahan data barang baru : Dikerjakan Oleh Nadir
    	if ($this->session->userdata('akses')) {
            $dmaster = array(
                'id_user'       => $this->session->userdata('user'),
                'no_trx'        => $this->input->post('notrx'),
                'grand_total'   => $this->cart->total(),
                'diskon'        => $this->input->post('diskon'),
                'total'         => $this->input->post('total'),
                'bayar'         => $this->input->post('bayar'),
                'kembalian'     => $this->input->post('kembalian'),
                'keterangan'    => $this->input->post('info'),
                'tgl_trx'       => date('Y-m-d'),
                'waktu_trx'     => date('h:i:s')
            );
            $pjmaster = $this->stok_model->pjmaster($dmaster);
            $id_master = $this->stok_model->get_id_pjmaster($this->input->post('notrx'))->result_array();
            foreach ($this->cart->contents() as $items) {
            	$dpj[] = array(
            		'id_brg' 	=> $items['id_brg'],
                    'id_master'	=> $id_master[0]['id_pjmaster'], 
            		'jml_jual' 	=> $items['qty'],
            		'sub_total' => $items['subtotal']
            	);
				$this->stok_model->update_stok($items['id_brg'], $items['qty']);
            }
            $pj = $this->stok_model->penjualan($dpj);
            if ($pj && $pjmaster){
            	$this->cart->destroy();
				$this->session->set_flashdata('message', 'Penjualan Sukses. <a class="alert-link" href="'.base_url().'detail_trx/'.$this->input->post('notrx').'">Lihat Detail Transaksi</a>');
				redirect(base_url('cart'));
            }else{
				$this->session->set_flashdata('message', 'Ooopss! Penjualan Gagal, Namun Stok Data Berubah. Silahkan Hubungi Admin!');
				redirect(base_url('cart'));
            }
        } else {
			redirect(base_url());
		}
	}
}
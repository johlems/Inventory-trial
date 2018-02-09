<?php 
	class connection {

	protected $isConn;
	protected $datab;
	protected $transaction;

	public function __construct($username="root", $password="", $host="localhost", $dbname="rjglobus", $options = []) {
		
	$this->isConn = TRUE;
		try {
			$this->datab = new PDO("mysql:host={$host};  dbname={$dbname}; charset=utf8", $username, $password, $options);
			$this->datab->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->transaction = $this->datab;
			$this->datab->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

			// If connection successfully connected

		} catch(PDOException $e) {
		  throw new Exception($e->getMessage());			
		}
	} // End of default constructor

	// Disconnect DB
	public function Disconnect() {
		$this->datab = NULL; // Close connection
		$this->isConn = FALSE;
	}
} ?>
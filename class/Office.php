<?php 
require_once('../database/Database.php');
require_once('../interface/iOffice.php');
class Office extends Database implements iOffice { //
	
	public function get_offices()
	{
		$sql = "SELECT * FROM tbl_off";
		return $this->getRows($sql);
	}

	public function delete_office($off_id)
	{
		$sql = "DELETE FROM `tbl_off` WHERE off_id = ?";
		return $this->deleteRow($sql, [$off_id]);
	}

	public function get_office($off_id)
	{
		$sql = "DELETE FROM `tbl_off` WHERE off_id = ?";
		return $this->getRow($sql, [$off_id]);
	}

	public function update_office($off_id, $desc)
	{
		$sql = "UPDATE tbl_off SET off_desc = ? WHERE off_id = ?;";
		return $this->updateRow($sql, [$desc, $off_id]);
	}
}

$office = new Office();

/// Under Construction ///
/// Edit & Delete Buttons ///
<?php
#
# This file is part of Alive Parish Software
#
# Alive Parish - software to manage tomorrow's parish
# Copyright (C) 2013  Redemptorist Media Center
#
# Alive Parish Software is free software: you can redistribute it
# and/or modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# Alive Parish Software is distributed in the hope that it will
# be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

class ImportBaptismsCommand extends CConsoleCommand
{
	public function actionIndex($file) {
		$rfile = preg_replace('/\.csv$/', '-rej.csv', $file);
		if (($fh = fopen($file, 'r')) !== FALSE) {
			$proc = false;
			$rej = 0;
			$num = 0;
			while (($data = fgetcsv($fh, 1000)) !== FALSE) {
				if ($proc) {
					++$num;
					try {
						$rec = new BaptismRecord;
						$rec->name = $data[0];
						$dob = FormatHelper::dateConv($data[1]);
						$rec->dob = $dob;
						$rec->baptism_dt = FormatHelper::dateConv($data[2]);
						$rec->baptism_place = $data[3];
						if (preg_match('/^m/i', $data[4])) {
							$rec->sex = 1;
						} else {
							$rec->sex = 2;
						}
						$rec->residence = $data[5];
						$rec->mother_tongue = $data[6];
						$rec->fathers_name = $data[7];
						$rec->mothers_name = $data[8];
						$rec->godfathers_name = $data[9];
						$rec->godmothers_name = $data[10];
						$rec->minister = $data[11];
						try {
							$rec->confirmation_dt = FormatHelper::dateConv($data[12]);
						}
						catch (Exception $e) {
							echo "Exception rec #$num: " . $e->getMessage() . " - Confirmation date. Set to empty\n";
						}
						try {
							$rec->marriage_dt = FormatHelper::dateConv($data[13]);
						}
						catch (Exception $e) {
							echo "Exception rec #$num: " . $e->getMessage() . " - Marriage date. Set to empty\n";
						}
						$rec->remarks = $data[14];
						if (!$rec->save()) {
							throw new Exception("Unable to save record");
						}
					}
					catch (Exception $e) {
						if (1 == ++$rej) {
							if (($rej_fh = fopen($rfile, 'w')) === FALSE) {
								echo "File $rfile cannot be opened in write mode. Do you have write permissions?";
								echo "Printing rejected records to STDOUT";
								$rej_fh = STDOUT;
							}
							fputcsv($rej_fh, $hdr);
						}
						echo "Caught exception Record #$num: " . $e->getMessage() . ". Saved to rejects file\n";
						fputcsv($rej_fh, $data);
					}
				} else {
					$proc = true;
					$hdr = $data;
				}
			}
		}
		fclose($fh);
		echo "Import complete. Total records: $num, success: " . ($num - $rej);
		if (isset($rej_fh)) {
			fclose($rej_fh);
			echo ", rejected: $rej.\nRejects saved to: $rfile";
		}
		echo ".\n";
	}
}


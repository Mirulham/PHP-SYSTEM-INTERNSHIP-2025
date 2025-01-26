<?PHP 
# menyemak kewujudan data POST
if (!empty($_POST))
{

	# mengambil data POST
	$course_name = $_POST['course_name'];
    
	#pengesahan data
	if (empty ($course_name)) 
    {
		echo "<script> 
			setTimeout(function() {
				Swal.fire({
					position: 'top-end', showConfirmButton: false, titleText: 'Gagal !', text: 'Data Tidak Lengkap !', icon: 'error', timerProgressBar: true, timer: 3000
				})
			}, 600);
		</script>";

	} else {
		# SQL to insert data
        // Note: If image_users or resume_users is NULL, it will be treated as NULL in the query
        $arahan_sql_simpan = "INSERT INTO lt_course(course_name)VALUES('$course_name')";

		#melaksanakan proses menyimpan data dalam syarat if
		if(mysqli_query($conn,$arahan_sql_simpan))
		{
			#jika proses menyimpan berjaya,papar info dan buka laman add.php
			//echo "<script>alert('Kemasukan Data Berjaya')</script>";
			redirect("senarai_kursus.php?success=1");
		}
		else
		{	
			#jika proses menyimpan gagal,papar laman sebelumnya
			echo "<script>
				setTimeout(function() {
					Swal.fire({
						position: 'top-end', showConfirmButton: false, titleText: 'Gagal !', text: 'Gagal !', icon: 'error', timerProgressBar: true, timer: 3000
					})
				}, 600);
			</script>";
			redirect("tambah_kursus.php");
		}
	}

}
?>
*** Variables ***
${menuKonfigurasi}      //a[contains(.,'Konfigurasi')]
${verifyPengguna}       //label[text()='Pengguna']
${searchPengguna}       //input[contains(@class,'form-control ng-untouched')]
${btnCari}              //button[text()='Cari']
${tambahPengguna}       //button[text()='Tambah Pengguna']
${verifyTambahPengguna}     //label[text()='Tambah Pengguna']
${inputNamaDepan}           //input[@placeholder='Nama Depan']
${inputNamaBelakang}        //input[@placeholder='Nama Belakang']
${email}                    //input[@placeholder='Masukan alamat email']
${selectUnitKerja}          css= .form-select
${PilihUnit}                //label[.='Pilih Unit']
${komponen}                 //label[.='Komponen 1']
${Provinsi}                 //span[text()='Aceh']
${btnTambahRole}            //button[text()=' Tambah Role ']
${roleLSP}                  //div[.='LSP']
${rolePCU}                  //label[text()='PCU']
${startDate}                //input[@name='dpFromDate']
${EndDate}                  //input[@name='dpToDate']
${addKegiatan}              //button[text()=' Tambah Kegiatan ']
${pilih}                    id= dropdownMenuButton
${selectItem}               css= .show.dropdown-menu label:nth-of-type(1)
${btnTambah}                //button[text()='Tambah']
${roleStaff}                //label[text()='Staff']
${btnUbahPhoto}             //label[text()='Ubah Photo']
${inputPhoto}               css= .files-input
${btnSimpanUploadPhoto}           //button[@class='btn btn-primary']
${btnCloseUploadPhoto}            //button[@class='btn btn-secondary']
${btnSimpanPengguna}              //button[@class='btn']
${btnBatalPengguna}               //button[text()='Batal']
${inputCari}                  //input[contains(@class,'form-control ng-untouched')]
${btnCari}                    //button[text()='Cari']
${verifyNamaLengkap}          //td[text()='Abriyanto ']
${verifyEmail}                //td[text()='ptm18@madrasah.kemenag.go.id']
${noData}                     //td[text()='No data!']
${pilihProvinsi}              //label[text()='Provinsi']/following::input
${InputNoTelp}                //input[@placeholder='Nomor Telepon']
${Jabatan}                    css= .ng-select-taggable input
${jabatan1}                   //ng-select[@class='ng-select ng-select-single ng-select-taggable ng-select-searchable ng-select-clearable ng-valid ng-select-bottom ng-touched ng-dirty']
${Jabatan2}                   (//div[@role='combobox']//input)[2]
${pilihJabatan}               //span[text()='Ketua PCU']
${Supervisor}                 //label[text()='Doni Wibowo (Secretary PMU)']
${PilihSupervisor}            //label[text()='Pilih Supervisor']




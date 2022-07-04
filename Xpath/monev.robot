*** Variables ***
${pageMonev}            //label[text()='Output Kegiatan']
${pageLongTerm}         //label[text()='Longterm Outcome']
${pageMonevMidterm}     //label[text()='Midterm Outcome']
${pageMonevIntermediate}    //label[text()='Intermediate Outcome']
${viewLongTerm}         css= .spacing
${popUpLongTerm}        (//label[text()='Target Longterm Outcome'])[2]
${closeLongTerm}        css=.btn-close
${btnEdit}              //button[text()='Edit']
${btnSimpan}            //label[text()='Simpan']
${btnKembali}           //label[text()='Kembali']
${btnTambahOutput}      //button[text()='Tambah Output/Indikator Keberhasilan']
${pilihKomponen}        //label[text()='Pilih Komponen']
${Komponen}             //label[contains(@class,'form-check-label font-size-16')]
${pilihSubKomponen}     //label[text()='Pilih Sub Komponen']
${subKomponen}          //label[text()='Sub-Komponen 1.1 - Dukungan terhadap Pengukuran dan Penilaian Capaian Standar Nasional Pendidikan untuk Madrasah']
${btnPilih}             id= activityName
${pilihOutputKegiatan}  //label[text()='O.1.C - Penyaluran dan pelaksanaan Bantuan Kinerja e-RKAM']
${indikatorHasil}       id= indicatorSuccess
${pilihHasil}          //label[text()='O.1.C.1 - Jumlah nilai bantuan kinerja e-RKAM yang diberikan']
${pilihIndikator}      //label[text()='Pilih Indikator Keberhasilan']
${indikatorLongterm}            //label[text()='L.1.1 - Persentase Madrasah yang mengalami perbaikan capaian tingkat madrasah dalam Sistem Pendidikan Nasional']
${indikatorMidterm}     //label[text()='M.1.1 - Rerata nilai guru dalam Rapor Mutu Guru berbasis AKG']
${indikatorIntermediate}        //label[text()='I.1.A.1 - Buat Baru']
${lanjut}               //label[text()='Lanjut']


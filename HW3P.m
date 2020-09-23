2;

##Fungsi Untuk Memanggil Judul Job
function Job(message1)            
  printf ("%s\n" ,message1);  
endfunction
##Fungsi Untuk Menghitung Tegangan Puncak 
function [Vsumber, Vp] = Vs (n)
  Vsumber = n;
  Vp      = n*sqrt(2);
  printf("Nilai Tegangan AC Masukan (Sumber) : %d V\n", Vsumber);
  printf("Nilai Tegangan Puncak Masukan (Sumber) : %d V\n", Vp);
  endfunction
##Fungsi Untuk Memanggil Nilai Resistansi Yang Diketahui
function L = R (q)
  R = q;
  printf("Nilai Resistansi : %d Ohm\n", R);
endfunction
##Fungsi Untuk Mencari Nilai Dengan Perhitungan Octave
function [Vpeak, Vrms, UdAC, Vavg, Irms, Iavg, Fu, Fi, Rp, Wu, Wi] = Fungsi (r, s)
  ##Fungsi baru Untuk Menghitung Tegangan Puncak
  Vpeak = r*sqrt(2);
  ##Untuk Menghitung Nilai Tegangan RMS Keluaraan 
  Vrms  = Vpeak*sqrt((3/(pi*2))*(pi*1/3+sqrt(3)/4))  
  ##Untuk Menghitung Nilai Tegangan Average Dan RMS Keluaraan
  Vavg  = (3*sqrt(3))*Vpeak/(2*pi); 
  UdAC  = sqrt((Vrms^2)-(Vavg^2));
  ##Untuk Menghitung Nilai Arus RMS Pada Beban 
  Irms   = (Vrms/s);
  ##Untuk Menghitung Nilai Arus Average Pada Beban
  Iavg   = (Vavg/s);
  ##Untuk Menghitung Nilai Form Factor (Fu) 
  Fu    = (Vrms/Vavg);
  ##Untuk Menghitung Nilai Form Factor (Fi) 
  Fi    = (Irms/Iavg);
  ##Untuk Menghitung Nilai Ripple Factor 
  Rp    = (UdAC/Vavg);
  ##Untuk Menghitung Nilai Ripple Wu 
  Wu    = (sqrt((Fu^2)-1))*100;
  ##Untuk Menghitung Nilai Ripple Wi 
  Wi    = (sqrt((Fi^2)-1))*100;
  
  printf("Nilai Tegangan RMS Keluaraan : %d V\n", Vrms);
  printf("Nilai Tegangan Average Keluaraan : %d V\n", Vavg);
  printf("Nilai Tegangan UdAC : %d V\n", UdAC);
  printf("Nilai Arus RMS Pada Beban : %d A\n", Irms);
  printf("Nilai Arus Arus Average Pada Beban: %d A\n", Iavg); 
  printf("Nilai Form Factor (Fu)  : %d\n", Fu);
  printf("Nilai Form Factor (Fi)  : %d\n", Fi);
  printf("Nilai Ripple Factor  : %d\n", Rp);
  printf("Nilai Ripple Wu  : %d %%\n", Wu);
  printf("Nilai Ripple Wi  : %d %%\n", Wi); 
endfunction
Job ("Perhitungan Dengan GNU Octave Half Wave 3 Phase");
##Isi Nilai Yang Diketahui 
Vs(90);
R(10000);

##Isi Angka Sesuai Urutan (Vs,R)
Fungsi(90, 10000);
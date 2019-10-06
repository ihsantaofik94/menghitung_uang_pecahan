program Uhitung_Tiket;

uses crt;

const
     HARGA_EKONOMI=1000;
     HARGA_BISNIS=200000;
     HARGA_EKSEKUTIF=300000;

var
   TotalEkonomi,TotalTiket,TotalKeseluruhan,TotalBisnis,TotalEksekutif,Ekonomi,Bisnis,Eksekutif,Bayar,Kembalian:integer;
   Uang:longint;

function pecahan(UangDiFungsi, Angka: integer): integer;
var
   Jumlah: integer;
begin
     if UangDiFungsi >= Angka then
        begin
             Jumlah:=UangDiFungsi div Angka;
             writeln('Rp. ',Angka,',- ada ',jumlah);
             pecahan:=UangDiFungsi mod Angka;
        end;
end;

begin
     textcolor(green);
     write('Banayak Tiket Ekonomi  :'); readln(Ekonomi);
     write('Banayak Tiket Bisnis   :'); readln(Bisnis);
     write('Banyak Tiket Eksekutif :'); readln(Eksekutif);

     writeln;
     TotalEkonomi:= Ekonomi * HARGA_EKONOMI;
     TotalBisnis:= Bisnis * HARGA_BISNIS;
     TotalEksekutif:= Eksekutif * HARGA_EKSEKUTIF;
     TotalKeseluruhan:= TotalEkonomi + TotalBisnis + TotalEksekutif;
     TotalTiket:=Ekonomi + Bisnis + Eksekutif;

     writeln('Total Tiket Ekonomi       :Rp. ',TotalEkonomi:10,'(',Ekonomi:2,' x Rp. ',HARGA_EKONOMI:7,')');
     writeln('Total Tiket Bisnis        :Rp. ',TotalBisnis:10,'(',Bisnis:2,' x Rp. ',HARGA_BISNIS:7,')');
     writeln('Total Tiket Eksekutif     :Rp. ',TotalEksekutif:10,'(',Eksekutif:2,' x Rp. ',HARGA_EKSEKUTIF:7,')');
     writeln('Total Keseluruhan Tiket   :Rp. ',TotalKeseluruhan:10,'(',TotalTiket:2,' Tiket)');
     write('Bayar                     :Rp. '); readln(Bayar);
     writeln(' ');
     writeln('=======================================');
     Kembalian:= Bayar-TotalKeseluruhan;
     writeln('Kembalian                 :Rp. ',Kembalian);
     writeln(' ');
     writeln(' ');
     writeln(' ');
     writeln(' ');


     //Kembalian Uang Pecahan
     Uang:= Kembalian;
     writeln('=======================================');
     writeln(' ');

     Uang := pecahan(Uang,100000);
     Uang := pecahan(Uang,50000);
     Uang := pecahan(Uang,20000);
     Uang := pecahan(Uang,10000);
     Uang := pecahan(Uang,5000);
     Uang := pecahan(Uang,2000);
     Uang := pecahan(Uang,1000);
     Uang := pecahan(Uang,500);
     Uang := pecahan(Uang,100);

     if (uang <= 100) AND (uang > 0) then
        begin
             writeln('sisa Rp. ',uang);
        end;

     writeln(' ');
     writeln(' ');
     writeln(' ');
     write('                        TERIMAKASIH SUDAH BERTRANSAKSI     ');
     readln;
end.
    

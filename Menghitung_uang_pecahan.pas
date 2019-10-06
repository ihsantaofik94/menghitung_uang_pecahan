program Uhitung_Tiket;

uses crt;

const
     HARGA_EKONOMI=1000;
     HARGA_BISNIS=200000;
     HARGA_EKSEKUTIF=300000;

var
   TotalEkonomi,TotalTiket,TotalKeseluruhan,TotalBisnis,TotalEksekutif,Ekonomi,Bisnis,Eksekutif,Bayar,Kembalian:integer;
   Uang,Jumlah:longint;

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

     if Uang >= 100000 then
        begin
             Jumlah:=Uang div 100000;
             writeln('Rp. 100000,- ada ',jumlah);
             Uang:=uang mod 100000;
        end;

     if Uang >= 50000 then
        begin
             Jumlah:=Uang div 50000;
             writeln('Rp. 50000,- ada ',jumlah);
             Uang:=uang mod 50000;
        end;

     if Uang >= 20000 then
        begin
             Jumlah:=Uang div 20000;
             writeln('Rp. 20000,- ada ', jumlah);
             Uang:=uang mod 20000;
        end;

     if Uang >= 10000 then
        begin
             Jumlah:=Uang div 10000;
             writeln('Rp. 10000,- ada ',jumlah);
             Uang:=uang mod 10000;
        end;

     if Uang >= 5000 then
        begin
             Jumlah:=Uang div 5000;
             writeln('Rp. 5000,- ada ',jumlah);
             Uang:=uang mod 5000;
        end;

     if Uang >= 2000 then
        begin
             Jumlah:=Uang div 2000;
             writeln('Rp. 2000,- ada ',jumlah);
             Uang:=uang mod 2000;
        end;

    if Uang >= 1000 then
        begin
             Jumlah:=Uang div 1000;
             writeln('Rp. 1000,- ada ',jumlah);
             Uang:=uang mod 1000;
        end;

     if Uang >= 500 then
        begin
             Jumlah:=Uang div 500;
             writeln('Rp. 500,- ada ',jumlah);
             Uang:=uang mod 500;
        end;

     if Uang >= 100 then
        begin
             Jumlah:=Uang div 100;
             writeln('Rp. 100,- ada ',jumlah);
             Uang:=uang mod 100;
        end;

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
    

use 5.016; 
use Spreadsheet::Read qw(ReadData); 
my $book_data = ReadData (‘new_excel.xlsx'); 
say 'A2: ' . $book_data->[1]{A2}; 


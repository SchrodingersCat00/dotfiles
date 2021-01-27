output_file="speedtest_out.csv";

speedtest --csv-header > $output_file;

while true;
do
	speedtest --csv | tee -a $output_file;
	sleep 50;
done;

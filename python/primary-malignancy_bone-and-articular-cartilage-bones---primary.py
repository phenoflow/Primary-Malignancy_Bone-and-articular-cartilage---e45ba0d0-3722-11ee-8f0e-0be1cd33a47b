# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"B300000","system":"readv2"},{"code":"B300100","system":"readv2"},{"code":"B300200","system":"readv2"},{"code":"B300300","system":"readv2"},{"code":"B300400","system":"readv2"},{"code":"B300500","system":"readv2"},{"code":"B300600","system":"readv2"},{"code":"B300700","system":"readv2"},{"code":"B300800","system":"readv2"},{"code":"B300900","system":"readv2"},{"code":"B305.00","system":"readv2"},{"code":"B305z00","system":"readv2"},{"code":"B307.00","system":"readv2"},{"code":"B307z00","system":"readv2"},{"code":"ZV10y11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_bone-and-articular-cartilage-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_bone-and-articular-cartilage-bones---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_bone-and-articular-cartilage-bones---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_bone-and-articular-cartilage-bones---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

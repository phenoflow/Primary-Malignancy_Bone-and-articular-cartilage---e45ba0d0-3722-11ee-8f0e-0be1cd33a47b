# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"B300A00","system":"readv2"},{"code":"B300B00","system":"readv2"},{"code":"B300C00","system":"readv2"},{"code":"B301.00","system":"readv2"},{"code":"B303000","system":"readv2"},{"code":"B303300","system":"readv2"},{"code":"B303500","system":"readv2"},{"code":"B304100","system":"readv2"},{"code":"B304200","system":"readv2"},{"code":"B304300","system":"readv2"},{"code":"B304400","system":"readv2"},{"code":"B306000","system":"readv2"},{"code":"B306100","system":"readv2"},{"code":"B306200","system":"readv2"},{"code":"B307000","system":"readv2"},{"code":"B307100","system":"readv2"},{"code":"B307200","system":"readv2"},{"code":"B308100","system":"readv2"},{"code":"B308200","system":"readv2"},{"code":"B308300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_bone-and-articular-cartilage-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_bone-and-articular-cartilage-neoplasm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_bone-and-articular-cartilage-neoplasm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_bone-and-articular-cartilage-neoplasm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

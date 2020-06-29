import csv
import sys

def help ():
    return "You have to specify the input file and the outputfile in this order"

def main ():    

    if len (sys.argv) == 3:  
        input = sys.argv[1]
        output = sys.argv[2]

        tsv_file = open(input, "r")
        read_tsv = csv.reader(tsv_file, delimiter="\t")
        array_line = []

        with open(output, 'w', newline="") as tsv_file_out:
            writer = csv.writer(tsv_file_out, delimiter='\t')
            for index, line in enumerate(read_tsv): 
                array_col = []      
                for index_col, col in enumerate(line):
                    if index_col > 3:
                        if index > 0:                                        
                            if col == "*":
                                new = 0
                            else:
                                new = 1
                            array_col.insert(index_col, new)
                        else:                
                            array_col.insert(index_col, col)
                writer.writerow(array_col)             
        tsv_file.close()
    
    else:
        print (help())

if __name__ == "__main__":
    main()
    

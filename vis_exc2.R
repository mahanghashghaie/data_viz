setwd("/home/mahan/Downloads")
lab_measurements <- read.csv2("LabMeasurements-Color-Card.csv")
master_color_card <- read.csv2("MasterColorCard.csv")

create_color_card_lab_matrix_for_row <- function(lab_dataset, row_num){
  
  names <- names(lab_dataset)[3:length(names(lab_dataset))]
  nl <- matrix(nrow=64,ncol=3)
  mat_row_ctr <- 1

  for (i in 1 : length(names)) {
    if(i %% 3 == 0) {
      nl[mat_row_ctr,1] = lab_measurements[row_num,i-2]
      nl[mat_row_ctr,2] = lab_measurements[row_num,i-1]
      nl[mat_row_ctr,3] = lab_measurements[row_num,i]
      mat_row_ctr = mat_row_ctr + 1
    }
  }
  return (nl)
}
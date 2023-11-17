
###Loading

data_f <- as_tibble(read_tsv("/net/pupil1/home/people/s183220/projects/group_20_project_real/data/_raw/function_file.tsv.gz"))
data_s <- as_tibble(read_tsv("/net/pupil1/home/people/s183220/projects/group_20_project_real/data/_raw/sequence_file.tsv.gz"))


###Entry er unik for for hevr række
data_f |>  nrow() == data_f |> distinct(Entry) |> nrow() #TRUE



data_f <- data_f %>%
  mutate(Cofactor = ifelse(is.na(Cofactor), NA, str_match(Cofactor, "Name=([^;]+);")[, 2])) 


  
  


# ETL para Sabrina
my_links <- c("https://www.lanacion.com.ar/buenos-aires/daniel-chain-dijo-que-no-habia-orden-judicial-para-impedir-la-demolicion-en-el-hospital-bord-nid1579757/")

# Agregar código para leer tu excel y sacar la columna de los links.
# my_data <- readr::read_csv(<path>)
# my_links <- my_data$url

purrr::map(my_links,~{
  scrape_news(.x)
}) %>% 
  bind_rows()-> my_data
readr::write_rds(my_data, here::here("sabrina/","scraping-2024-05-13.rds"))

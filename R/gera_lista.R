gera_lista <- function(numero_lista, n_questoes) {
  lista_dir <- paste0("lista_", numero_lista)

  dir.create(lista_dir)

  for (i in 1:n_questoes) {
    writeLines("", con = paste0(lista_dir, sprintf("/exercicio_%02d.md", i)))
  }
}

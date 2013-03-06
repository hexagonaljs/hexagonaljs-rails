class Glue
  constructor: (@useCase, @gui, @serverSideAdapter) ->
    LogAll(@useCase)
    LogAll(@gui)
    LogAll(@serverSideAdapter)
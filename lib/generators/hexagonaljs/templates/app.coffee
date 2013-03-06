class App
  constructor: ->
    useCase = new UseCase()
    gui = new Gui()
    serverSideAdapter = new ServerSideAdapter()

    glue = new Glue(useCase, gui, serverSideAdapter)

    useCase.start()



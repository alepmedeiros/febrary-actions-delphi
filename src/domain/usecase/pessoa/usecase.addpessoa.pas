unit usecase.addpessoa;

interface

uses
  model.pessoa;

type
  iAddPessoa = interface
    function Add(parametros: TPessoa) : TPessoa;
  end;

implementation

end.

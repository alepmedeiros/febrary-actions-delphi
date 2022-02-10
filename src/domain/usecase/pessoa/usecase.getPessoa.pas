unit usecase.getPessoa;

interface

uses
  model.pessoa;

type
  iGetPessoa = interface
    function GetPessoa: TPessoa;
  end;

implementation

end.

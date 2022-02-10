unit usecase.savePessoa;

interface

uses
  model.pessoa;

type
  iSavePessoa = interface
    function Save(paramentros: TPessoa) : TPessoa;
  end;

implementation

end.

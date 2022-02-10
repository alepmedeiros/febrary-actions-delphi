unit usecase.getAllPessoa;

interface

uses
  model.pessoa,
  System.Generics.Collections;

type
  iGetAllPessoa = interface
    function getAllPessoa : TObjectList<TPessoa>;
  end;

implementation

end.

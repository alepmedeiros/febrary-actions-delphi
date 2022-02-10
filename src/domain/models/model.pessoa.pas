unit model.pessoa;

interface

type
  TPessoa = class
  private
    FNome: String;
    FNascimento: TDateTime;
    FCep: String;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FBairro: String;
    FCidade: String;
    FEstado: String;
  public
    property Nome: String read FNome write FNome;
    property Nascimento: TDateTime read FNascimento write FNascimento;
    property Cep: String read FCep write FCep;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property Complemento: String read FComplemento write FComplemento;
    property Bairro: String read FBairro write FBairro;
    property Cidade: String read FCidade write FCidade;
    property Estado: String read FEstado write FEstado;
  end;

implementation

end.

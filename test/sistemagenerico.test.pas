unit sistemagenerico.test;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TSistemaGenericoTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TSistemaGenericoTest.Setup;
begin
end;

procedure TSistemaGenericoTest.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TSistemaGenericoTest);

end.

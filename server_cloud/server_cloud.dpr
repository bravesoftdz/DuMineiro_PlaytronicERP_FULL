program server_cloud;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse;

begin
  THorse.Get('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)

    begin

      Res.Send('OK');
    end);

  THorse.Listen(9000);
end.

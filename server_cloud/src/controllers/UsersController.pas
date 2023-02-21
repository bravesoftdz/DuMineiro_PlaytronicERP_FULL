unit UsersController;

interface

uses
  System.SysUtils, System.Classes;

type
  TUsersController = class
  private
    { Private declarations }
  public
    { Public declarations }
    function list(): TArray<String>;
  end;

implementation


{$R *.dfm}

{ TUsersController }

function TUsersController.list: TArray<String>;
begin
  Result := [];
end;

end.


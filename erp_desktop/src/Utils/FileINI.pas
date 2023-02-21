unit FileINI;

interface
  uses
    IniFiles, FMX.Platform;

type
  TFileINI = class
    private
      pFile: TIniFile;
    public
      constructor create(sFile: String); overload;

      procedure add(Section: String; Id: String; Value: String);overload;
      procedure add(Section: String; Id: String; Value: Integer);overload;
      procedure add(Section: String; Id: String; Value: Boolean);overload;
      procedure add(Section: String; Id: String; Value: Double);overload;
      procedure closeFile();

      function read(Section: String; Id: String; Value: String): String ; overload;
      function read(Section: String; Id: String; Value: Integer): Integer ; overload;
      function read(Section: String; Id: String; Value: Boolean): Boolean ; overload;
      function read(Section: String; Id: String; Value: Double): Double ; overload;

  end;

  Const
    FILE_NOT_FOUND = 'Arquivo de configuração não encontrado.';


implementation

{ TFileINI }


{ TFileINI }

procedure TFileINI.add(Section, Id, Value: String);
begin
  Self.pFile.WriteString(Section, Id, Value);
end;

procedure TFileINI.add(Section, Id: String; Value: Integer);
begin
  Self.pFile.WriteInteger(Section, Id, Value);
end;

procedure TFileINI.add(Section, Id: String; Value: Boolean);
begin
  Self.pFile.WriteBool(Section, Id, Value);
end;

procedure TFileINI.add(Section, Id: String; Value: Double);
begin
  Self.pFile.WriteFloat(Section, Id, Value);
end;

procedure TFileINI.closeFile;
begin
  Self.pFile.Free;
end;

constructor TFileINI.create(sFile: String);
begin
  Self.pFile.Create(sFile)
end;

function TFileINI.read(Section, Id: String; Value: Integer): Integer;
begin
  Result := Self.pFile.ReadInteger(Section,Id, Value);
end;

function TFileINI.read(Section, Id, Value: String): String;
begin
  Result := Self.pFile.ReadString(Section,Id, Value);
end;

function TFileINI.read(Section, Id: String; Value: Boolean): Boolean;
begin
  Result := Self.pFile.ReadBool(Section,Id, Value);
end;

function TFileINI.read(Section, Id: String; Value: Double): Double;
begin
  Result := Self.pFile.ReadFloat(Section,Id, Value);
end;

end.

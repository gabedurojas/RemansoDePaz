unit CambioParcelaCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, JvExGrids, JvStringGrid, Buttons,
  JvExButtons, JvBitBtn, JvgGroupBox,ClaseFunciones,Unidad,DBClient,
  ComCtrls,ClaseParcelasTitulares, ExtCtrls,ClaseTiposSectores,ClaseParcelasTitularesHistorico;
  
type THackStringGrid = class(TStringGrid);
type
  TAM_Titulares = class(TForm)
    GroupBox2: TGroupBox;
    JvgGroupBox1: TJvgGroupBox;
    Label21: TLabel;
    Label53: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    NIVEL: TComboBox;
    GrillaT: TJvStringGrid;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    bGuardar: TJvBitBtn;
    Label1: TLabel;
    nroaccion: TEdit;
    barra: TStatusBar;
    JvBitBtn1: TJvBitBtn;
    Label14: TLabel;
    ElSector: TComboBox;
    Label29: TLabel;
    LaAccion: TComboBox;
    ODNI: TEdit;
    LB1: TLabel;
    Busca: TJvBitBtn;
    GroupBox4: TGroupBox;
    c4: TCheckBox;
    C6: TCheckBox;
    elimina2: TJvBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure Limpiar(nro: byte);
    procedure VentasSinTitCellClick(Column: TColumn);
    procedure bGuardarClick(Sender: TObject);
    procedure GrillaTClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure AccionesClick(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaClick(Sender: TObject);
    procedure elimina2Click(Sender: TObject);
  private
      gh:boolean;
         action:integer;
    { Private declarations }
  public
    coefi,inter,porcent,name,coninter,nivelusu:string;
    Adress,NroDocu,TProfesion,TNacimiento,TNacion,Resultado,TCuif: string;
    TTel,TCel,TTipo,Naci,Nacio,TECivil,TCiudad,TEstado,TCP,TProvincia,TDoc,TDom,TNivel: string;
    Funciones:TFuncionesVarias;
    DtcomboC,DtCombo,DataSetC,DataSet,DataSet1,DataSetCli:TClientDataSet;
    ParcelasTitulares:TParcelasTitulares;
    ParcelasTitularesHistorico:TParcelasTitularesHistorico;
    IdCombos:array of array of string;
    { Public declarations }
  end;

var
  AM_Titulares: TAM_Titulares;

implementation

uses Modulo,Busqueda;

{$R *.dfm}

procedure TAM_Titulares.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Titulares.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,2);
  GrillaT.Cells[0,0]:='Orden';
  GrillaT.Cells[1,0]:='Id';
  GrillaT.Cells[2,0]:='Nombre';
  GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='DNI';
  GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';
  GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';
  GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';
  GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';

  coloca1(0);
  elsector.SetFocus;

end;
end;

procedure TAM_Titulares.Coloca1(nro:byte);
var  txtw,txt:widestring;
     t,y:integer;
     sec:string;
     TiposSectores:TTiposSectores;
     accion:variant;
begin
if nro=0 then begin
    ELSECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSectores:=TTiposSectores.Create(nil);
    TiposSectores.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT Sector FROM TiposSectores';
    if TiposSectores.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposSectores.Free;
    ELSECTOR.ItemIndex:=0;
end;
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='Select * FROM vistalostitularesminoristas Where (NroAccion = ' + trim(odni.Text) +') and (nivel > 0) ';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    for t:=0 to grillat.ColCount-1 do
      for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      grillat.RowCount:=t+1;
      grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
      grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
      grillat.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
      grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
      grillat.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
      grillat.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
      grillat.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
      grillat.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
      grillat.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
      grillat.Cells[9,t]:=trim(DtCombo.Fields[8].AsString);
      grillat.Cells[10,t]:=trim(DtCombo.Fields[9].AsString);
      grillat.Cells[11,t]:=trim(DtCombo.Fields[10].AsString);
      grillat.Cells[12,t]:=trim(DtCombo.Fields[11].AsString);
    end;
    barra.Panels[0].Text:='Cant. de Acciones encontradas: ' + inttostr(DtCombo.RecordCount);
end;
if nro=2 then begin
    LAACCION.Clear;
    DtComboC.Free;
    DtcomboC:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    sec:=IdCombos[1,ELSECTOR.ItemIndex];
      txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
     + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
     + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
      if Funciones.Listar(txtw,DtcomboC) then begin
         SetLength(IdCombos[0],DtcomboC.RecordCount);
       for t:=1 to DtcomboC.RecordCount  do begin
        DtcomboC.RecNo:=t;
        LAACCION.Items.Insert(t-1,trim(DtcomboC.Fields[0].AsString));
        IdCombos[0,t-1]:=DtcomboC.Fields[0].AsString;
        action:=strtoint(DtcomboC.Fields[0].AsString);
       end;
      end
      else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
      mtError,[mbok],0);

    funciones.Free;
    LAACCION.ItemIndex:=0;
end;
if nro=3 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[1,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
    'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  odni.Text:=DataSet.Fields[0].AsString;
  Funciones.Free;
end;
end;



procedure TAM_Titulares.limpiar(nro:byte);
var p,u:integer;
begin
  if nro=1 then  begin
    c4.Checked:=false;
    c6.Checked:=false;
    for p:=0 to grillat.ColCount-1 do
      for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
      grillat.RowCount:=2;

    odni.Text:='00000000';  
    nroaccion.Text:='00000';
    edit1.Text:='00000000000';
    bguardar.Enabled:=false;
    agrega2.Enabled:=false;
    elimina2.Enabled:=false;
    Modifica2.Enabled:=false;
    coloca1(0);
    elsector.SetFocus;
  end;

end;

procedure TAM_Titulares.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.ShowModal;
    TCuif:=busqueda.DB2.Text;    //CUIf
    edit1.Text:=busqueda.DB1.Text;     //DNI
    name:=busqueda.DB4.Text;   //Nombre
    tdom:=busqueda.DB5.Text;   //Domicilio
    TDoc:=busqueda.DB3.Text;   //Tipo Doc
    Nacio:=busqueda.DB8.Text;          //NAcionalidad
    TECivil:=busqueda.DB9.Text;       //ecivil
    naci:=busqueda.DB10.Text;          //fecnaci
  finally
    Busqueda.Destroy;
    Agrega2.Enabled:=true;
    Agrega2.SetFocus;
  end;
end;

procedure TAM_Titulares.Agrega2Click(Sender: TObject);
var t:integer;
  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
      if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(TDoc))
      and (GrillaT.Cells[6,p]=trim(Tnivel))
      and (GrillaT.Cells[8,p]=trim(tcuif))
      then busca:=false;
  end;
  end;

begin
if busca() then begin
  if (GrillaT.RowCount > 1) and (trim(GrillaT.Cells[0,1])<>'') then begin
    t:=GrillaT.RowCount;
    GrillaT.RowCount:=GrillaT.RowCount+1;
  end
  else t:=1;
  if  GrillaT.RowCount = 5 then begin
    messagedlg('Error No se Puede seguir ingresando Titulares ',mtError,[mbok],0);
    GrillaT.Cells[0,t]:='';              GrillaT.Cells[1,t]:='';
    GrillaT.Cells[2,t]:='';              GrillaT.Cells[3,t]:='';
    GrillaT.Cells[4,t]:='';              GrillaT.Cells[5,t]:='';
    GrillaT.Cells[6,t]:='';              GrillaT.RowCount:=GrillaT.RowCount-1;
  end
  else begin
    GrillaT.Cells[0,t]:=completa1(inttostr(t),2,'0'); //
    GrillaT.Cells[1,t]:='?';                          //
    GrillaT.Cells[2,t]:=trim(name);   //Nombre
    GrillaT.Cells[3,t]:=trim(TDoc);           //TipoDNI
    GrillaT.Cells[4,t]:=trim(edit1.Text);      //DNI
    GrillaT.Cells[5,t]:=trim(tdom);      //dom
    GrillaT.Cells[6,t]:=completa1(inttostr(t),2,'0');//trim(NIVEL.text);      //nrotit
    GrillaT.Cells[7,t]:='X';                   //mdf
    GrillaT.Cells[8,t]:=trim(tcuif);    //cuif
    GrillaT.Cells[9,t]:=trim(naci);      //fecnac
    GrillaT.Cells[10,t]:=trim(nacio);    //nacionalidad
    GrillaT.Cells[11,t]:=trim(TECivil);   //ecivil
    C6.Checked:=false;
    c4.Checked:=true;
  end;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  Agrega2.Enabled:=FALSE;
  EDIT1.Text:='00000000000';
  name:='';
  tdoc:='';
  tcuif:='';
  nacio:='';
  tecivil:='';
  TNivel:='';
  bGuardar.Enabled:=true;
  bGuardar.SetFocus;

end
else messagedlg('ERROR!! No Puede Existir dos Titulares del mismo NIVEL!!',mterror,[mbok],0);
Button2.SetFocus;
end;

procedure TAM_Titulares.Modifica2Click(Sender: TObject);
  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
  if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
     if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(Tdoc))
      and (GrillaT.Cells[6,p]=trim(Tnivel))
      and (GrillaT.Cells[8,p]=trim(tcuif))
      and (ht<>p)
       then busca:=false;
  end;
  end;
begin
if busca(GrillaT.Row) then begin
  if GrillaT.Cells[1,GrillaT.Row] <> '?' then begin
     GrillaT.Cells[7,GrillaT.Row]:='X';
  end;
  GrillaT.Cells[2,GrillaT.Row]:=trim(name);         //Nombre
  GrillaT.Cells[3,GrillaT.Row]:=trim(tdoc);         //TipoDNI
  GrillaT.Cells[4,GrillaT.Row]:=trim(edit1.Text);   //DNI
  GrillaT.Cells[5,GrillaT.Row]:=trim(tdom);         //dom
  GrillaT.Cells[6,GrillaT.Row]:=trim(TNivel);//  trim(NIVEL.text);   //nrotit
  GrillaT.Cells[8,GrillaT.Row]:=trim(tcuif);        //cuif
  GrillaT.Cells[9,GrillaT.Row]:=trim(naci);         //fecnac
  GrillaT.Cells[10,GrillaT.Row]:=trim(nacio);       //cuif
  GrillaT.Cells[11,GrillaT.Row]:=trim(tecivil);     //fecnac
  C4.Checked:=false;
  C6.Checked:=true;
  Agrega2.Enabled:=false;
  Modifica2.Enabled:=false;
  button2.SetFocus;
end
else messagedlg('ERROR!! No Puede Existir dos Clientes con el mismo NIVEL!!',mterror,[mbok],0);
end;

procedure TAM_Titulares.VentasSinTitCellClick(Column: TColumn);
begin
if not (Dataset1.IsEmpty) then begin
  GroupBox2.Enabled:=true;
  nroaccion.Text:=trim(dataset1.Fields[0].AsString);
  coloca1(1);
  agrega2.Enabled:=true;
  button2.SetFocus;
end;
end;

procedure TAM_Titulares.bGuardarClick(Sender: TObject);
var gf,p,t,u,a:integer;
    pt,pth:boolean;
begin
   if c6.Checked = false then begin
     gf:=messagedlgpos('Desea Agregar este Cliente como Nuevo Titular?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
     if gf = 1 then begin
        if c4.Checked=true then begin
                 for p:=1 to GrillaT.RowCount-1 do begin
                    if trim(grillaT.Cells[1,p]) = '?' then begin
                      ParcelasTitulares:=TParcelasTitulares.Create(nil);
                      ParcelasTitulares.ConnectionString:=modulo2.Conexion;
                      parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
                      parcelastitulares.C_Fecha_IX1:=strcut(Fec_System(),10);
                      parcelastitulares.C_NroAccion_IX2:=strtoint(odni.Text);
                      parcelastitulares.C_NroTipoAcc_IX3:=2;
                      parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
                      parcelastitulares.C_Activo:=true;
                      parcelastitulares.C_Observaciones:='';
                      parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
                      parcelastitulares.C_Usu_A:=modulo2.nro_usu;
                      pt:=parcelastitulares.Agrega;
                       if pt then begin
                         messagedlg('Se ha Guardado el nuevo Titular con Exito',mtConfirmation,[mbok],0);
                         Barra.Panels[1].Text:='Se ha Guardado los Titulares con Exito';
                       end
                       else begin
                         messagedlg('Error al Guardar el nuevo Titular. Consulte con un Administrador',mtError,[mbok],0);
                         Barra.Panels[1].Text:='Error al Guardar los Titulares';
                       end;
                      parcelastitulares.Free;
                    end;
                 end;
            coloca1(0);
            limpiar(1);
            bguardar.Enabled:=false;
        end;
     end;
   end
   else begin
             if c4.Checked=true then begin
                 for p:=1 to GrillaT.RowCount-1 do begin
                    if trim(grillaT.Cells[1,p]) = '?' then begin
                      ParcelasTitulares:=TParcelasTitulares.Create(nil);
                      ParcelasTitulares.ConnectionString:=modulo2.Conexion;
                      parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
                      parcelastitulares.C_Fecha_IX1:=strcut(Fec_System(),10);
                      parcelastitulares.C_NroAccion_IX2:=strtoint(odni.Text);
                      parcelastitulares.C_NroTipoAcc_IX3:=2;
                      parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
                      parcelastitulares.C_Activo:=true;
                      parcelastitulares.C_Observaciones:='';
                      parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
                      parcelastitulares.C_Usu_A:=modulo2.nro_usu;
                      pt:=parcelastitulares.Agrega;
                      if pt then begin
                        messagedlg('Se ha Guardado el nuevo Titular con Exito',
                        mtConfirmation,[mbok],0);
                        Barra.Panels[1].Text:='Se ha Guardado los Titulares con Exito'
                      end
                      else begin
                         messagedlg('Error al Guardar el nuevo Titular. Consulte ' +
                         'con un Administrador',mtError,[mbok],0);
                        Barra.Panels[1].Text:='Error al Guardar los Titulares';
                      end;
                      parcelastitulares.Free;
                      coloca1(0);
                      limpiar(1);
                      bguardar.Enabled:=false;
                    end
                    else begin
                      gf:=messagedlgpos('Desea Modificar este Titular?',mtWarning,[
                           mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
                     if gf = 1 then begin
                       if trim(grillaT.Cells[7,t]) = 'X' then begin
                          ///inserto en el historico
                           ParcelasTitularesHistorico:=TParcelasTitularesHistorico.Create(nil);
                           ParcelasTitularesHistorico.ConnectionString:=modulo2.Conexion;
                           ParcelasTitularesHistorico.C_NroAccion_IX1:=strtoint(odni.Text);
                           ParcelasTitularesHistorico.C_Cuif_IX2:=strtoint64(GrillaT.Cells[8,p]);
                           ParcelasTitularesHistorico.C_Fecha_IX3:=strcut(Fec_System(),10);
                           ParcelasTitularesHistorico.C_NroTipoAcc_IX4:=2;
                           ParcelasTitularesHistorico.C_Nivel:=strtoint(GrillaT.Cells[6,p]);
                           ParcelasTitularesHistorico.C_Fecha_A:=strcut(Fec_System(),10);
                           ParcelasTitularesHistorico.C_Usu_A:=modulo2.nro_usu;
                           pth:=ParcelasTitularesHistorico.Agrega;
                           if pth then begin
                             Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito'
                           end
                           else begin
                            Barra.Panels[1].Text:='Error al Modificar los Titulares';
                           end;
                          ParcelasTitularesHistorico.Free;
                          ///
                          ParcelasTitulares:=TParcelasTitulares.Create(nil);
                          ParcelasTitulares.ConnectionString:=modulo2.Conexion;
                          parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
                          parcelastitulares.C_Fecha_IX1:=strcut(Fec_System(),10);
                          parcelastitulares.C_NroAccion_IX2:=strtoint(odni.Text);
                          parcelastitulares.C_NroTipoAcc_IX3:=2;
                          parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
                          parcelastitulares.C_Activo:=true;
                          parcelastitulares.C_Observaciones:='';
                          parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
                          parcelastitulares.C_Usu_A:=modulo2.nro_usu;
                          pt:=parcelastitulares.Modificar;
                          if pt then begin
                             messagedlg('Se ha Modificado el Titular con Exito',
                             mtConfirmation,[mbok],0);
                             Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito'
                          end
                          else begin
                             messagedlg('Error al Modificar el Titular. Consulte ' +
                            'con un Administrador',mtError,[mbok],0);
                            Barra.Panels[1].Text:='Error al Modificar los Titulares';
                          end;
                          parcelastitulares.Free;
                           coloca1(0);
                           limpiar(1);
                           bguardar.Enabled:=false;
                       end;
                     end;
                    end;
                 end;
             end;
   end;
   for a:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[a,u]:='';
     grillat.RowCount:=2;
end;

procedure TAM_Titulares.GrillaTClick(Sender: TObject);
begin
Agrega2.Enabled:=false;
Modifica2.Enabled:=true;
elimina2.Enabled:=true;
edit1.Text:=trim(GrillaT.Cells[4,GrillaT.Row]);
name:=trim(GrillaT.Cells[2,GrillaT.Row]);
tdoc:=trim(GrillaT.Cells[3,GrillaT.Row]);
Tnivel:=trim(GrillaT.Cells[6,GrillaT.Row]);
tcuif:=trim(GrillaT.Cells[8,GrillaT.Row]);
naci:=trim(GrillaT.Cells[9,GrillaT.Row]);
nacio:=trim(GrillaT.Cells[10,GrillaT.Row]);
tecivil:=trim(GrillaT.Cells[11,GrillaT.Row]);
button2.SetFocus;
end;

procedure TAM_Titulares.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TAM_Titulares.AccionesClick(Sender: TObject);
begin
//if not (Dataset1.IsEmpty) then begin
//  GroupBox2.Enabled:=true;
//  nroaccion.Text:=trim(acciones.Cells[0,acciones.Row]);
////  coloca1(2);
////  coloca1(1);
//  agrega2.Enabled:=true;
//  button2.SetFocus;
//end;
end;

procedure TAM_Titulares.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TAM_Titulares.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(2);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
end;
end;

procedure TAM_Titulares.LaAccionExit(Sender: TObject);
begin
if LaAccion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  LaAccion.SetFocus;
end;
end;

procedure TAM_Titulares.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(3);
  busca.SetFocus;
end;
end;

procedure TAM_Titulares.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  busca.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;  
end;

procedure TAM_Titulares.BuscaClick(Sender: TObject);
begin
  coloca1(1);
end;

procedure TAM_Titulares.elimina2Click(Sender: TObject);
var t,p,gf:integer;
var bt,pthb:boolean;
begin
if trim(grillat.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grillat.Cells[1,grillat.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar este Titular Seleccionado?' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    ///inserto en el historico
       ParcelasTitularesHistorico:=TParcelasTitularesHistorico.Create(nil);
       ParcelasTitularesHistorico.ConnectionString:=modulo2.Conexion;
       ParcelasTitularesHistorico.C_NroAccion_IX1:=strtoint(odni.Text);
       ParcelasTitularesHistorico.C_Cuif_IX2:=strtoint64(GrillaT.Cells[8,grillat.Row]);
       ParcelasTitularesHistorico.C_Fecha_IX3:=strcut(Fec_System(),10);
       ParcelasTitularesHistorico.C_NroTipoAcc_IX4:=2;
       ParcelasTitularesHistorico.C_Nivel:=strtoint(GrillaT.Cells[6,grillat.Row]);
       ParcelasTitularesHistorico.C_Fecha_A:=strcut(Fec_System(),10);
       ParcelasTitularesHistorico.C_Usu_A:=modulo2.nro_usu;
       pthb:=ParcelasTitularesHistorico.Agrega;
       if pthb then begin
            Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito'
       end
       else begin
           Barra.Panels[1].Text:='Error al Modificar los Titulares';
       end;
       ParcelasTitularesHistorico.Free;
    ///
    if t=0 then begin
      ParcelasTitulares:=TParcelasTitulares.Create(nil);
      ParcelasTitulares.ConnectionString:=modulo2.Conexion;
      bt:=ParcelasTitulares.Borrar(grillat.Cells[1,grillat.Row]);
      ParcelasTitulares.Free;
      if bt then  begin
        Barra.Panels[1].Text:='Se ha Eliminado este Titular con Exito';
      end
      else begin
       Barra.Panels[1].Text:='Error al Eliminar este Titular con Exito';
      end;
    end;
    t:=grillat.Row;
    if (t >= 1) and (grillat.RowCount > 2) then begin
      THackStringGrid(grillat).DeleteRow(t);
    end
    else begin
      for t:=0 to grillat.ColCount-1 do grillat.Cells[t,1]:='';
    end;
  end;
  elimina2.Enabled:=false;
  Modifica2.Enabled:=false;
  limpiar(1);
end;
end;

end.

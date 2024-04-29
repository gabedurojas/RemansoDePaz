unit Tree_Parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView, ADODB,
  ImgList, StdCtrls, Grids,ClaseFunciones,DBClient;

type
  TTree_Parcelario = class(TForm)
    Arbol: TJvCheckTreeView;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    contado: TEdit;
    lista: TEdit;
    anticipo: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    Procedure CrearTreeConNodos();
    procedure Coloca1(nro:byte);
  private
    DataSet1,DataSet2,DataSet:TADODataSet;
    //DtCombo:TClientDataSet;
    gh,espverde:boolean;{ Private declarations }
  public
    Funciones:TFuncionesVarias;
    NroAccion,IdColor,IdSector,impsaldo,implista,impentrega,accion:string;{ Public declarations }
  end;

var
  Tree_Parcelario: TTree_Parcelario;

implementation

uses Modulo, Unidad;

{$R *.dfm}
procedure TTree_Parcelario.FormCreate(Sender: TObject);
begin
gh:=false;
DataSet1:=TADODataSet.Create(nil);
DataSet1.ConnectionString:=modulo2.Conexion;
DataSet:=TADODataSet.Create(nil);
DataSet.ConnectionString:=modulo2.Conexion;
end;

procedure TTree_Parcelario.FormActivate(Sender: TObject);
var t:integer;
begin
if not(gh) then begin
  gh:=true;
  coloca1(2);
  coloca1(0);
  coloca1(1);
  CrearTreeConNodos;
  Arbol.CheckBoxOptions.CascadeLevels:=2;
  Arbol.Items[0].Expand(false);
end;
end;

procedure TTree_Parcelario.Coloca1(nro:byte);
var DtCombo:TClientDataSet;
var t,y:integer;
var txtw:widestring;
begin
if nro=0 then begin
  DataSet1.CommandText:='SELECT  dbo.TiposSectores.Sector, dbo.ParcelasPrecios.PrecioLista, dbo.ParcelasPrecios.PrecioContado,'
     + ' dbo.ParcelasPrecios.Anticipo FROM dbo.ParcelasPrecios INNER JOIN'
     + ' dbo.TiposSectores ON dbo.ParcelasPrecios.IdSector = dbo.TiposSectores.IdSector '
     + ' WHERE (dbo.TiposSectores.Sector = ' + chr(39) + IdSector + chr(39) + ')'
     + ' and (dbo.ParcelasPrecios.TipoColor = ' + IdColor+ ')';
  DataSet1.Open;
  if DataSet1.RecordCount > 0 then begin
     contado.Text:=trim(DataSet1.Fields[2].AsString);
     lista.Text:=trim(DataSet1.Fields[1].AsString);
     anticipo.Text:=trim(DataSet1.Fields[3].AsString);
     implista:=trim(DataSet1.Fields[1].AsString);
     impentrega:=trim(DataSet1.Fields[3].AsString);
     impsaldo:=floattostr(strtofloat(DataSet1.Fields[1].AsString) - strtofloat(DataSet1.Fields[3].AsString))
  end;
  DataSet1.Close;
end;
if nro=1 then begin
  espverde:=false;
  DataSet1.CommandText:='SELECT NroAccion FROM Parcelas '
  +' WHERE (EspacioVerde = 1) AND (NroAccion = ' +  NroAccion + ') and (Sector = ' + chr(39) + IdSector + chr(39) + ')';
  DataSet1.Open;
  if DataSet1.RecordCount > 0 then begin
    espverde:=true;
  end;
  DataSet1.Close;
end;
if nro=2 then begin
        // tomo el color de la parcela
   DataSet1.CommandText :='SELECT TOP (100) PERCENT dbo.Parcelas.Sector, dbo.ParcelasPrecios.TipoColor '
   +' FROM dbo.Parcelas '
   + ' INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
   + ' INNER JOIN dbo.TiposSectores ON dbo.TiposPlazas.Codigo = dbo.TiposSectores.Codigo'
   + ' INNER JOIN dbo.ParcelasPrecios ON dbo.TiposSectores.IdSector = dbo.ParcelasPrecios.IdSector'
   + ' INNER JOIN dbo.TiposColores ON dbo.Parcelas.TipoColor = dbo.TiposColores.TipoColor'
   + ' AND dbo.ParcelasPrecios.TipoColor = dbo.TiposColores.TipoColor'
   {DataSet1.CommandText:='SELECT  dbo.ParcelasPrecios.TipoColor FROM dbo.ParcelasPrecios '
   + ' INNER JOIN dbo.TiposColores ON dbo.ParcelasPrecios.TipoColor = dbo.TiposColores.TipoColor '
   + ' INNER JOIN dbo.TiposSectores ON dbo.ParcelasPrecios.IdSector = dbo.TiposSectores.IdSector '
   + ' INNER JOIN dbo.Parcelas ON dbo.TiposColores.TipoColor = dbo.Parcelas.TipoColor '
   + ' INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
   + ' AND dbo.TiposSectores.Plaza = dbo.TiposPlazas.Detalle AND dbo.TiposSectores.Codigo = dbo.TiposPlazas.Codigo ' }
   + ' WHERE  (dbo.Parcelas.Sector = '+ chr(39) + IdSector + chr(39)
   + ') AND (dbo.Parcelas.NroAccion = ' + NroAccion+ ')';
   DataSet1.Open;
   if not DataSet1.IsEmpty then begin
    idcolor:= DataSet1.Fields[1].AsString;
   end;
   //else Barra1.Panels[2].Text:='N° Accion: NO EXISTENTE';
   DataSet1.Close;
end;


end;

Procedure TTree_Parcelario.CrearTreeConNodos();
var Solapa,Lista:string;
   cn,y,t,NroPrinc,NroSec,NroSol,NroFil,NroDet:integer;
begin
try
  if not espverde then begin
      Arbol.Items.Add(nil,'Nº ACCION: ' + NroAccion);
      Arbol.Items[Arbol.Items.Count-1].ImageIndex:=6;
      Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;

      Arbol.Items.AddChild(Arbol.Items[0],'DATOS PARCELARIOS');
      Arbol.Items[Arbol.Items.Count-1].ImageIndex:=10;
      Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
      NroPrinc:=Arbol.Items.Count-1;
      DataSet1.CommandText:='MuestraDatosNroAccion 1,' + NroAccion;
      DataSet1.Open;
      if DataSet1.RecordCount > 0 then begin
        Arbol.Items.AddChild(Arbol.Items[NroPrinc],'Sector: ' + trim(DataSet1.Fields[1].AsString));
        Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
        Arbol.Items[NroPrinc].SelectedIndex:=Arbol.Items[NroPrinc].ImageIndex;
        Arbol.Items.AddChild(Arbol.Items[NroPrinc],'Plaza: ' + trim(DataSet1.Fields[3].AsString));
        Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
        Arbol.Items[NroPrinc].SelectedIndex:=Arbol.Items[NroPrinc].ImageIndex;
        Arbol.Items.AddChild(Arbol.Items[NroPrinc],'N° Parcela: ' + trim(DataSet1.Fields[4].AsString));
        Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
        Arbol.Items[NroPrinc].SelectedIndex:=Arbol.Items[NroPrinc].ImageIndex;
        Arbol.Items.AddChild(Arbol.Items[NroPrinc],'N° Acta: ' + trim(DataSet1.Fields[5].AsString));
        Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
        Arbol.Items[NroPrinc].SelectedIndex:=Arbol.Items[NroPrinc].ImageIndex;
        Arbol.Items.AddChild(Arbol.Items[NroPrinc],'Nomenclatura: ' + trim(DataSet1.Fields[6].AsString));
        Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
        Arbol.Items[NroPrinc].SelectedIndex:=Arbol.Items[NroPrinc].ImageIndex;
      end
      else Arbol.Items.AddChild(Arbol.Items[0],'SIN DATOS');
      DataSet1.Close;

      Arbol.Items.AddChild(Arbol.Items[0],'TITULARES DECLARADOS');
      Arbol.Items[Arbol.Items.Count-1].ImageIndex:=3;
      Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
      NroPrinc:=Arbol.Items.Count-1;
      DataSet1.CommandText:='MuestraDatosNroAccion 2,' + NroAccion;
      DataSet1.Open;
      if DataSet1.RecordCount > 0 then begin
        Solapa:='';
        for t:=1 to DataSet1.RecordCount do begin
          DataSet1.RecNo:=t;
          Arbol.Items.AddChild(Arbol.Items[NroPrinc],trim(DataSet1.Fields[5].AsString) + ' - N° : ' + trim(DataSet1.Fields[6].AsString));
          NroSol:=Arbol.Items.Count-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Nombre: ' + trim(DataSet1.Fields[4].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Dni: ' + trim(DataSet1.Fields[3].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
        end;
      end
      else Arbol.Items.AddChild(Arbol.Items[0],'SIN DATOS');
      DataSet1.Close;

      Arbol.Items.AddChild(Arbol.Items[0],'INHUMADOS');
      Arbol.Items[Arbol.Items.Count-1].ImageIndex:=9;
      Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
      NroPrinc:=Arbol.Items.Count-1;
      DataSet1.CommandText:='MuestraDatosNroAccion 3,' + NroAccion;
      DataSet1.Open;
      if DataSet1.RecordCount > 0 then begin
        Solapa:='';
        for t:=1 to DataSet1.RecordCount do begin
          DataSet1.RecNo:=t;
          Arbol.Items.AddChild(Arbol.Items[NroPrinc],trim(DataSet1.Fields[9].AsString));
          NroSol:=Arbol.Items.Count-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Nivel: ' + trim(DataSet1.Fields[2].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Posición: ' + trim(DataSet1.Fields[3].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Objeto: ' +trim(DataSet1.Fields[5].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Documento: ' + trim(DataSet1.Fields[6].AsString) + ' -> '+ trim(DataSet1.Fields[7].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Nombre: ' +trim(DataSet1.Fields[8].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'N° Sección: ' +trim(DataSet1.Fields[12].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'N° Acta: ' +trim(DataSet1.Fields[13].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'N° Folio: ' +trim(DataSet1.Fields[14].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'N° Tomo: ' +trim(DataSet1.Fields[15].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
          Arbol.Items.AddChild(Arbol.Items[NroSol],'Médico: ' +trim(DataSet1.Fields[16].AsString));
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[NroSol].SelectedIndex:=Arbol.Items[NroSol].ImageIndex;
        end;
      end
      else Arbol.Items.AddChild(Arbol.Items[NroPrinc],'SIN INHUMADOS');
      DataSet1.Close;

      Arbol.Items.AddChild(Arbol.Items[0],'PRECIOS VENTAS DE PARCELA');
      Arbol.Items[Arbol.Items.Count-1].ImageIndex:=6;
      Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
      NroPrinc:=Arbol.Items.Count-1;
      Arbol.Items.AddChild(Arbol.Items[NroPrinc],'Cantidad Cuotas Habilitadas');
      DataSet2:=TADODataSet.Create(nil);
      DataSet2.ConnectionString:=modulo2.Conexion;
      DataSet2.CommandText:='SELECT dbo.ParcelasCoeficientes.NroCuota FROM dbo.ParcelasCoeficientes '
      + 'INNER JOIN dbo.TiposObjetosConfigVentas ON dbo.ParcelasCoeficientes.Id = '
      + 'dbo.TiposObjetosConfigVentas.IdCoeficiente WHERE (dbo.TiposObjetosConfigVentas.Activo = 1) '
      + 'and (dbo.TiposObjetosConfigVentas.codigo=1)';
      DataSet2.Open;

      //  DataSet.CommandText:='SELECT  dbo.TiposSectores.Sector, dbo.ParcelasPrecios.PrecioLista, dbo.ParcelasPrecios.PrecioContado,'
      //     + ' dbo.ParcelasPrecios.Anticipo FROM dbo.ParcelasPrecios INNER JOIN'
      //     + ' dbo.TiposSectores ON dbo.ParcelasPrecios.IdSector = dbo.TiposSectores.IdSector '
      //     + ' WHERE (dbo.TiposSectores.Sector = ' + chr(39) + IdSector + chr(39) + ')';
      //  DataSet.Open;
      //  if DataSet1.RecordCount > 0 then begin
      //     contado.Text:=trim(DataSet1.Fields[2].AsString);
      //     lista.Text:=trim(DataSet1.Fields[1].AsString);
      //     anticipo.Text:=trim(DataSet1.Fields[3].AsString);
      //  end;
      //  DataSet1.Close;

      for y:=1 to DataSet2.RecordCount do begin
        DataSet2.RecNo:=y;
        if DataSet2.Fields[0].AsInteger = 1 then Arbol.Items.AddChild(Arbol.Items[NroPrinc],'En ' + DataSet2.Fields[0].AsString + ' Cuota')
        else Arbol.Items.AddChild(Arbol.Items[NroPrinc],'En ' + DataSet2.Fields[0].AsString + ' Cuotas');
        Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
        Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
        NroSec:=Arbol.Items.Count-1;
        DataSet1.CommandText:='SELECT nrocuota,montocuota,Interes,detalle FROM RecreaCuotasxColor ('
        + IdColor + ' ,' + chr(39) + IdSector + chr(39) + ' , ' + DataSet2.Fields[0].AsString +','+impentrega+','+implista+')';
        DataSet1.Open;
        if DataSet1.RecordCount > 0 then begin
          Arbol.Items.AddChild(Arbol.Items[NroSec],'N° Cuota  -    Valor  - % Interes - Detalle');
          Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
          Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
          for t:=1 to DataSet1.RecordCount do begin
            DataSet1.RecNo:=t;
            Arbol.Items.AddChild(Arbol.Items[NroSec],StrFill(trim(DataSet1.Fields[0].AsString),8,' ','')
            + '      - $' + Redondeo(trim(DataSet1.Fields[1].AsString),2) + '      - $' + trim(DataSet1.Fields[2].AsString)
            + '      - >>' + trim(DataSet1.Fields[3].AsString));
            Arbol.Items[Arbol.Items.Count-1].ImageIndex:=-1;
            Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;
          end;
        end
        else Arbol.Items.AddChild(Arbol.Items[0],'SIN DATOS');
        DataSet1.Close;
      end;
  end
  else begin
      Arbol.Items.Add(nil,'Nº ACCION: ' + NroAccion);
      Arbol.Items[Arbol.Items.Count-1].ImageIndex:=6;
      Arbol.Items[Arbol.Items.Count-1].SelectedIndex:=Arbol.Items[Arbol.Items.Count-1].ImageIndex;

      Arbol.Items.AddChild(Arbol.Items[0],'PARCELA COMO ESPACIO VERDE');
  end;
except
end;
end;


end.

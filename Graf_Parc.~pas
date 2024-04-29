unit Graf_Parc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ieview, imageenview, ievect, rulerbox, hyiedefs,
  ADODB, StdCtrls, Buttons, JvExButtons, JvBitBtn, ToolWin, ExtCtrls,
  JvExExtCtrls, JvShape, RpDefine, RpBase, RpSystem, DB, DBClient,ClaseFunciones,
  ieopensavedlg, JPEG;

type HackTable = class(TADOTable);
type
  TGrafico_Parcelario = class(TForm)
    Barra1: TStatusBar;
    PopupMenu1: TPopupMenu;
    Historial1: TMenuItem;
    Vender1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ZOOM: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    SALE: TJvBitBtn;
    SECTOR: TComboBox;
    Label1: TLabel;
    MOVER: TJvBitBtn;
    BUSCAR: TJvBitBtn;
    ToolButton5: TToolButton;
    ImageEnVect1: TImageEnVect;
    Configurar1: TMenuItem;
    JvBitBtn1: TJvBitBtn;
    ToolButton8: TToolButton;
    RvC: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    SaveImageEnDialog1: TSaveImageEnDialog;
    JvBitBtn2: TJvBitBtn;
    ToolButton7: TToolButton;
    ZOOM1: TJvBitBtn;
    ToolButton9: TToolButton;
    Barra2: TStatusBar;
    JvBitBtn3: TJvBitBtn;
    ToolButton10: TToolButton;
    RvSP: TRvSystem;
    Panel1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure Impresion(nro:byte);
    procedure ImageEnVect1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ZOOMClick(Sender: TObject);
    procedure MOVERClick(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure SECTORChange(Sender: TObject);
    procedure Historial1Click(Sender: TObject);
    procedure SECTORKeyPress(Sender: TObject; var Key: Char);
    procedure BUSCARClick(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure ImageEnVect1Click(Sender: TObject);
    procedure RvCPrint(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure ZOOM1Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure RvSPPrint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    DataSet1,DataSet0:TADODataSet;
    DataSetInhu:TClientDataSet;
    Funciones:TFuncionesVarias;
    gh:boolean;
    Posiciones:array of array of integer;
    IdCombo:array of array of string;
    IdColor,cantinhu,laaccion:string;
    BX, BY, valzum: integer;{ Private declarations }
  public{ Public declarations }
    PosH:Array [0..8] of Double;//Posiciones
    Camp:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
  end;

var
  Grafico_Parcelario: TGrafico_Parcelario;

implementation

uses Modulo, Unidad, Tree_Parcelas, ConfigColor,InhumaSinServicios;

{$R *.dfm}

procedure TGrafico_Parcelario.FormCreate(Sender: TObject);
begin
gh:=false;
DataSet1:=TADODataSet.Create(nil);
DataSet1.ConnectionString:=Modulo2.Conexion;
DataSet0:=TADODataSet.Create(nil);
DataSet0.ConnectionString:=Modulo2.Conexion;

end;

procedure TGrafico_Parcelario.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  valzum:=25;
  panel1.Visible:=false;
  ImageEnVect1.Zoom:=valzum;
  JvBitBtn1.Enabled:=false;
  JvBitBtn2.Enabled:=false;
  JvBitBtn3.Enabled:=false;
  Coloca1(0);
  SECTOr.SetFocus;
end;
end;

procedure TGrafico_Parcelario.Coloca1(nro:byte);
var t,Obj:integer;
      txtw:widestring;
begin
if nro=0 then begin
  SECTOR.Clear;
  DataSet1.CommandText :='SELECT distinct dbo.TiposSectores.Sector, dbo.TiposSectores.IdSector, dbo.TiposSectores.Plaza, '
  +'dbo.Sectores.PosXInicio, dbo.Sectores.PosYInicio, dbo.Sectores.PosXFinal, dbo.Sectores.PosYFinal FROM '
  +'dbo.TiposSectores INNER JOIN dbo.Sectores ON dbo.TiposSectores.Sector = dbo.Sectores.Sector'
  +' order by dbo.TiposSectores.IdSector';
//  DataSet1.CommandText:='SELECT dbo.Sectores.Sector,dbo.Sectores.Id,'
//  + 'ISNULL(dbo.TiposPlazas.Detalle,' + chr(39) + 'PLANO GENERAL' + chr(39)
//  + '),dbo.Sectores.PosXInicio,dbo.Sectores.PosYInicio,dbo.Sectores.PosXFinal,'
//  + 'dbo.Sectores.PosYFinal FROM dbo.TiposPlazas RIGHT OUTER JOIN dbo.Sectores '
//  + 'ON dbo.TiposPlazas.Codigo = dbo.Sectores.CodigoPlaza '
        //    + ' WHERE     (ISNULL(dbo.TiposPlazas.Detalle, ''PLANO GENERAL'') <> ''Sin nombre'')'
//  + 'ORDER BY dbo.Sectores.Id ';
  DataSet1.Open;
  SetLength(IdCombo,6);
  for t:=0 to 5 do SetLength(IdCombo[t],DataSet1.RecordCount);
  for t:=1 to DataSet1.RecordCount do begin
    DataSet1.RecNo:=t;
    SECTOR.Items.Append(trim(DataSet1.Fields[0].AsString));
    IdCombo[0,t-1]:=trim(DataSet1.Fields[1].AsString);
    IdCombo[1,t-1]:=trim(DataSet1.Fields[2].AsString);
    IdCombo[2,t-1]:=trim(DataSet1.Fields[3].AsString);
    IdCombo[3,t-1]:=trim(DataSet1.Fields[4].AsString);
    IdCombo[4,t-1]:=trim(DataSet1.Fields[5].AsString);
    IdCombo[5,t-1]:=trim(DataSet1.Fields[6].AsString);
  end;
  DataSet1.Close;
  SECTOR.ItemIndex:=0;
end;
if nro = 1 then begin
  DataSet1.Close;
  DataSet1.CommandText:='SELECT ObservacionEspVerde FROM  dbo.Parcelas '
  + ' WHERE (Parcelas.Sector = '+ chr(39)+ trim(sector.Text) + chr(39) +') and (nroaccion =' + laaccion +' )';
  DataSet1.Open;
  if not DataSet1.IsEmpty then begin
    memo1.Text :=trim(DataSet1.Fields[0].AsString)
  end;
  DataSet1.Close;
end;
if nro = 2 then begin
  DataSet1.CommandText:='SELECT Color FROM ColoresGrafico WHERE (Id=9)';
  DataSet1.Open;
  if DataSet1.Fields[0].AsString <> '' then begin
    try
      ImageEnVect1.Background:=StringToColor(DataSet1.Fields[0].AsString);
    except
    end;
  end;
  DataSet1.Close;
  ImageEnVect1.RemoveAllObjects;
  ImageEnVect1.Clear;
  ImageEnVect1.Center:=false;
  ImageEnVect1.MUnit:=ieuCENTIMETERS;
  ImageEnVect1.ChangeResolution(3000,rfFastLinear);
  //Realizamos el dibujo de los bordes
  DataSet1.CommandText:='SELECT TipoObjeto,Color,PosX,PosY,Largo,Alto,ArcIni,'
   + 'ArcFin,Texto,Size FROM SectoresDibujos WHERE (IdSector=' + IdCombo[0,SECTOR.ItemIndex] + ') ORDER BY ID';
  DataSet1.Open;
  if not DataSet1.IsEmpty then begin
    for t:=1 to DataSet1.RecordCount do begin
      DataSet1.RecNo:=t;
      with ImageEnVect1 do begin
        if UpperCase(DataSet1.Fields[0].AsString) = 'LABEL' then begin
          Obj := AddNewObject;
          ObjKind[Obj] := iekLINELABEL ;
          ObjLeft[Obj] :=DataSet1.Fields[2].AsInteger;
          ObjTop[Obj] := DataSet1.Fields[3].AsInteger;
          ObjWidth[Obj]:=DataSet1.Fields[4].AsInteger;
          ObjHeight[Obj]:=DataSet1.Fields[5].AsInteger;
          ObjLabelPosition[Obj]:=ielEnd;
          ObjLabelBorder[Obj]:=ielNone;
          ObjPenWidth[Obj] :=0;
          ObjPenColor[Obj] := clwhite;
          ObjTextAlign[Obj]:=iejCenter;
          ObjLabelBrushColor[Obj]:= StringToColor(DataSet1.Fields[1].AsString);
          ObjFontName[Obj]:='Arial Black';
          ObjFontHeight[Obj]:=DataSet1.Fields[9].AsInteger;
          ObjText[Obj]:=DataSet1.Fields[8].AsString;
        end;
        if UpperCase(DataSet1.Fields[0].AsString) = 'LINEA' then begin
          AddNewObject(iekLine,Rect(DataSet1.Fields[2].AsInteger,DataSet1.Fields[3].AsInteger,DataSet1.Fields[4].AsInteger,DataSet1.Fields[5].AsInteger), StringToColor(DataSet1.Fields[1].AsString));
        end;
        if UpperCase(DataSet1.Fields[0].AsString) = 'ARCO' then begin
          Obj := AddNewObject;
          ObjKind[Obj] := iekARC ;
          ObjLeft[Obj] :=DataSet1.Fields[2].AsInteger;
          ObjTop[Obj] := DataSet1.Fields[3].AsInteger;
          ObjWidth[Obj]:=DataSet1.Fields[4].AsInteger;
          ObjHeight[Obj]:=DataSet1.Fields[5].AsInteger;
          ObjArcStartingAngle[Obj]:=GradosToRadianes(DataSet1.Fields[6].AsFloat);
          ObjArcEndingAngle[Obj]:=GradosToRadianes(DataSet1.Fields[7].AsFloat);
          ObjPenWidth[Obj] :=0;
        end;
      end;
    end;
  end;
  MOVER.Enabled:=true;
  ZOOM.Enabled:=true;
  ZOOM1.Enabled:=true;
  ImageEnVect1.Update;
  ImageEnVect1.IO.SaveToFile(Modulo2.path_todo + '\Imagenes\rome.jpg');

  DataSet1.Close;
  if MOVER.Enabled then begin
    //Realizamos el color de los bordes de cada parcela
    DataSet1.CommandText:='SELECT Parcela,PosX1 + ' + IdCombo[2,SECTOR.ItemIndex]
    + ',PosY1 + ' + IdCombo[3,SECTOR.ItemIndex] + ',Largo,Alto,'
    + 'case when espacioverde = 0 then ColorBorde else ''ClLime'' end as colorborde,'
    + 'case when espacioverde = 0 then ColorLetra else ''ClLime'' end as ColorLetra '
    //+ ',PosY1 + ' + IdCombo[3,SECTOR.ItemIndex] + ',Largo,Alto,ColorBorde,ColorLetra,EspacioVerde '
    //+ ' FROM VParcelasDibujo '
    + ' FROM VParcelasDibujo1 '
    + 'WHERE (Sector=' + chr(39) + SECTOR.Text + chr(39) + ') AND (PosX1 IS NOT NULL) ORDER BY PosY1,PosX1';
    DataSet1.Open;
    if not DataSet1.IsEmpty then begin
      for t:=1 to DataSet1.RecordCount do begin
        DataSet1.RecNo:=t;
        with ImageEnVect1 do begin
          Obj := AddNewObject;
          ObjPenWidth[Obj] :=5;
          ObjKind[Obj]:= iekBOX ;
          //if DataSet1.Fields[7].AsInteger =0 then begin
            ObjPenColor[Obj] := StringToColor(DataSet1.Fields[5].AsString);
            ObjLeft[Obj]:=DataSet1.Fields[1].AsInteger;
            ObjTop[Obj]:= DataSet1.Fields[2].AsInteger;
            ObjWidth[Obj]:=DataSet1.Fields[3].AsInteger;
            ObjHeight[Obj]:=DataSet1.Fields[4].AsInteger;
            Obj := AddNewObject;	 // hobj is an integer
            ObjPenWidth[Obj] :=5;
            ObjKind[Obj] := iekTEXT ;
          if DataSet1.Fields[3].AsInteger > DataSet1.Fields[4].AsInteger  then begin
            ObjLeft[Obj] :=DataSet1.Fields[1].AsInteger + 65;
            ObjTop[Obj] := DataSet1.Fields[2].AsInteger + 35;
            ObjWidth[Obj] :=100;
            ObjHeight[Obj] :=50;
            ObjFontAngle[Obj]:=0;
          end
          else begin
            ObjLeft[Obj] :=DataSet1.Fields[1].AsInteger + 35;
            ObjTop[Obj] := DataSet1.Fields[2].AsInteger + 65;
            ObjWidth[Obj] :=50;
            ObjHeight[Obj] :=100;
            ObjFontAngle[Obj]:=90;
          end;
          ObjPenColor[Obj] := StringToColor(DataSet1.Fields[6].AsString);
          ObjPenStyle[Obj] :=psClear;
          ObjTextAlign[Obj]:=iejCenter;
          ObjFontName[Obj]:='Arial Black';
          ObjFontHeight[Obj]:=50;
          ObjText[Obj]:=DataSet1.Fields[0].AsString;
        end;
      end;
      MOVER.Enabled:=true;
      ZOOM.Enabled:=true;
      ImageEnVect1.Repaint;
    end;
  end;
  DataSet1.Close;
  ImageEnVect1.IO.SaveToFile(Modulo2.path_todo + '\Imagenes\rome1.jpg');
  Sale.Focused;
end;
if nro=3 then begin
  DataSet1.CommandText:='SELECT DISTINCT dbo.Parcelas.TipoColor, dbo.TiposColores.Detalle,'
  + ' dbo.TiposPlazas.Codigo + '' : '' + dbo.TiposPlazas.Detalle AS Plaza FROM  dbo.Parcelas INNER JOIN'
  + ' dbo.TiposColores ON dbo.TiposColores.TipoColor = dbo.Parcelas.TipoColor INNER JOIN'
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
  + ' WHERE (Parcelas.Sector = '+ chr(39)+ trim(sector.Text) +chr(39)+')';
  DataSet1.Open;
    if not DataSet1.IsEmpty then begin
      //idcolor:=DataSet1.Fields[0].AsString;
      Barra1.Panels[1].Text := 'Color Sector: ' + DataSet1.Fields[1].AsString;
      Barra1.Panels[2].Text := 'Plaza: ' + DataSet1.Fields[2].AsString;
    end;
  DataSet1.Close;
end;
if nro=4 then begin    // LISTA DE ACCIONES
  DataSet1.CommandText:='SELECT DISTINCT dbo.Parcelas.TipoColor, dbo.TiposColores.Detalle,'
  + ' dbo.TiposPlazas.Codigo + '' : '' + dbo.TiposPlazas.Detalle AS Plaza FROM  dbo.Parcelas INNER JOIN'
  + ' dbo.TiposColores ON dbo.TiposColores.TipoColor = dbo.Parcelas.TipoColor INNER JOIN'
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
  + ' WHERE (Parcelas.Sector = '+ chr(39)+ trim(sector.Text) +chr(39)+')';
  DataSet1.Open;
    if not DataSet1.IsEmpty then begin
      //
    end;
  DataSet1.Close;
end;
if nro=5 then begin
  DataSet1.CommandText:='SELECT DISTINCT dbo.Parcelas.TipoColor, dbo.TiposColores.Detalle,'
  + ' dbo.TiposPlazas.Codigo + '' : '' + dbo.TiposPlazas.Detalle AS Plaza FROM  dbo.Parcelas INNER JOIN'
  + ' dbo.TiposColores ON dbo.TiposColores.TipoColor = dbo.Parcelas.TipoColor INNER JOIN'
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
  + ' WHERE (Parcelas.Sector = '+ chr(39)+ trim(sector.Text) +chr(39)+')';
  DataSet1.Open;
    if not DataSet1.IsEmpty then begin
      //
    end;
  DataSet1.Close;
end;
if nro=6 then begin   ////LISTA DE INHUMADOS
  DataSetInhu.Free;
  DataSetInhu:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Parcela,Nroaccion,Nivel,Posicion,Nombrefallecido,Fechafallecimiento,Fechainhumacion,Colorsector,'
     +'nomvreplaza as Plaza FROM Fn_VistaParcelasInhumadosxSector ('+ chr(39)+ trim(sector.Text) +chr(39)+')';
  if not  Funciones.Listar(txtw,DataSetInhu) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  cantinhu:=inttostr(DataSetInhu.RecordCount);
end;
end;

procedure TGrafico_Parcelario.ImageEnVect1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
BX := ImageEnVect1.XScr2Bmp(X);
BY := ImageEnVect1.YScr2Bmp(Y);
Barra1.Panels[3].Text := Format('Posiciones: (%d, %d)', [BX, BY]);
end;

procedure TGrafico_Parcelario.ZOOMClick(Sender: TObject);
begin
  valzum:= valzum + 5;
  ImageEnVect1.Zoom:=valzum;
end;

procedure TGrafico_Parcelario.MOVERClick(Sender: TObject);
begin
ImageEnVect1.MouseInteract:=[miScroll];
end;

procedure TGrafico_Parcelario.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TGrafico_Parcelario.SECTORChange(Sender: TObject);
begin
buscar.SetFocus;
end;

procedure TGrafico_Parcelario.Historial1Click(Sender: TObject);
var Px,Py:string;
var Tree_Parcelario: TTree_Parcelario;
begin
  try
    Px:=IntToStr(BX-StrToInt(IdCombo[2,SECTOR.ItemIndex]));
    Py:=IntToStr(BY-StrToInt(IdCombo[3,SECTOR.ItemIndex]));
  except
    Px:='-1';
    Py:='-1';
  end;
  DataSet1.CommandText:='SELECT NroAccion FROM Parcelas WHERE (Sector=' + chr(39)
  + SECTOR.Text + chr(39) + ') AND (PosX1 <=' + Px + ') AND (PosY1 <=' + Py
  + ') AND (PosX1+Largo >= ' + Px + ')  AND (PosY1+Alto >= ' + Py + ');';
  DataSet1.Open;
  if not DataSet1.IsEmpty then begin
    Barra1.Panels[1].Text:=Inttostr(DataSet1.RecordCount);
    Barra1.Panels[2].Text:='N° Accion: ' + DataSet1.Fields[0].AsString;
    try
      Tree_Parcelario:= TTree_Parcelario.create(self);
     // Tree_Parcelario.
      Tree_Parcelario.NroAccion:=DataSet1.Fields[0].AsString;
      //Tree_Parcelario.Idcolor:=IdColor;
      Tree_Parcelario.IdSector:=trim(sector.Text);
      Tree_Parcelario.ShowModal;
    finally
      Tree_Parcelario.free;
      SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    end;
  end
  else Barra1.Panels[2].Text:='N° Accion: NO EXISTENTE';
  DataSet1.Close;
end;

procedure TGrafico_Parcelario.SECTORKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then BUSCAR.SetFocus;
end;

procedure TGrafico_Parcelario.BUSCARClick(Sender: TObject);
begin
  Coloca1(2);
  Barra1.Panels[1].Text := '';
  Barra1.Panels[2].Text := '';
  Coloca1(3);
  JvBitBtn1.Enabled:=true;
  JvBitBtn2.Enabled:=true;
  JvBitBtn3.Enabled:=true;
end;

procedure TGrafico_Parcelario.Configurar1Click(Sender: TObject);
//var ConfiguraColor: TConfiguraColor;
//    pf:boolean;
begin
panel1.Visible :=true;
//try
//  ConfiguraColor:= TConfiguraColor.create(self);
//  ConfiguraColor.ShowModal;
//  pf:=ConfiguraColor.Cancelado;
//finally
//  ConfiguraColor.free;
//end;
//if not pf then Coloca1(2);
end;

procedure TGrafico_Parcelario.Vender1Click(Sender: TObject);
begin
//
end;


procedure TGrafico_Parcelario.ImageEnVect1Click(Sender: TObject);
var Px,Py:string;
begin
  try
    Px:=IntToStr(BX-StrToInt(IdCombo[2,SECTOR.ItemIndex]));
    Py:=IntToStr(BY-StrToInt(IdCombo[3,SECTOR.ItemIndex]));
  except
    Px:='-1';
    Py:='-1';
  end;
  DataSet1.CommandText:='SELECT NroAccion,espacioverde FROM Parcelas WHERE (Sector=' + chr(39) + SECTOR.Text + chr(39)
  + ') AND (PosX1 <=' + Px + ') AND (PosY1 <=' + Py + ') AND (PosX1+Largo >= ' + Px + ')  AND (PosY1+Alto >= ' + Py + ');';
  DataSet1.Open;
  if not DataSet1.IsEmpty then begin
   if trim(DataSet1.Fields[1].AsString)='True' then  begin
     Barra1.Panels[0].Text:='ESPACIO VERDE';
     laaccion:=DataSet1.Fields[0].AsString;
     Coloca1(1);
     PopupMenu1.Items[0].Enabled:=false;
     PopupMenu1.Items[1].Enabled:=false;
     PopupMenu1.Items[2].Enabled:=false;
     PopupMenu1.Items[4].Enabled:=true;
   end
   else begin
    Barra1.Panels[1].Text:=Inttostr(DataSet1.RecordCount);
    Barra1.Panels[2].Text:='N° Accion: ' + DataSet1.Fields[0].AsString;
    PopupMenu1.Items[0].Enabled:=true;
    PopupMenu1.Items[1].Enabled:=true;
    PopupMenu1.Items[2].Enabled:=true;
    PopupMenu1.Items[3].Enabled:=false;
    PopupMenu1.Items[4].Enabled:=false;
   end;
  end
  else begin
   Barra1.Panels[2].Text:='N° Accion: NO EXISTENTE';
  end;
  DataSet1.Close;

end;


procedure TGrafico_Parcelario.Impresion(nro:byte);
begin
  if nro=1 then begin
  //
  end;
  if nro=2 then begin
  //
  end;
end;

procedure TGrafico_Parcelario.RvCPrint(Sender: TObject);
var posfx,posfy,final,salto,posw,sd1,posn:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
     with RvC do begin
       Imagen1 := TBitMap.Create;
       PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
       if FileExists(PathLogo) then begin
         Image1.Picture.LoadFromFile(PathLogo);
         Imagen1.Assign(Image1.Picture.Graphic);
        BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+60,posfy+25,Imagen1);
       end;
       Imagen1.Free;
       BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+37);  //(posx+4,posy+5,posx+195,posy+37);
       BaseReport.SetFont('Arial Black',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.SetFont('Arial',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
       BaseReport.PrintXY(posx+23,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
       BaseReport.PrintXY(posx+160,posy+28,'Fecha Imp.: ' + DateToStr(Date));
       BaseReport.SetFont('Arial',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+185,posy+9,'Pág.: ' + inttostr(vaf));
       BaseReport.RoundRect(posx+20,posy+29,posx+200,posy+34,5,5);
       BaseReport.PrintXY(posx+24,posy+32.5,'LISTADO DE INHUMADOS DEL SECTOR: ' + TRIM(SECTOR.TEXT));
        BaseReport.PrintXY(posx+120,posy+32.5,'CANTIDAD DE INHUMADOS: ' + cantinhu);
       BaseReport.SetFont('Arial Black',8);
       Logo:=posy+33;
     end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
     with RvC do begin
      BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      RvC.BaseReport.SetFont('Arial Black',6);
      RvC.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp)-1 do begin
        RvC.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
      end;
     Result:=posy+5;
   end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
    RvC.BaseReport.SetFont('Arial',6);
    RvC.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     RvC.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
   with RvC do begin
    BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
try
  posfx:=1.5;
  posfy:=2;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3;
  Camp[4]:=4; Camp[5]:=5; Camp[6]:=6; Camp[7]:=7;  Camp[8]:=8;

  TxtCamp[0]:='Parcela';  TxtCamp[1]:='N°Accion'; TxtCamp[2]:='Nivel';  TxtCamp[3]:='Posicion';
  TxtCamp[4]:='Nombrefallecido';   TxtCamp[5]:='FecFallec.';    TxtCamp[6]:='FecInhum.'; TxtCamp[7]:='Colorsector';
  TxtCamp[8]:='Plaza';

  PosH[0]:=5;   PosH[1]:=18;  PosH[2]:=33;  PosH[3]:=45;
  PosH[4]:=60;  PosH[5]:=125;  PosH[6]:=140; PosH[7]:=155;
  PosH[8]:=170;

  T8.Close;
  T8.CloneCursor(DataSetInhu,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then RvC.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 280 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvC.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;

      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TGrafico_Parcelario.JvBitBtn1Click(Sender: TObject);
begin
coloca1(6);
//tituloreporte:='LISTADO DE INHUMADOS DEL SECTOR: ' + TRIM(SECTOR.TEXT);
rvc.Execute;
end;

procedure TGrafico_Parcelario.JvBitBtn2Click(Sender: TObject);
//var stream:TMemoryStream;
//    Jpg:TJPEGImage;
var InhuSinServ: TInhuSinServ;
begin
  InhuSinServ:= TInhuSinServ.create(self);
  try
    InhuSinServ.NroOpcion:=3;
    InhuSinServ.Caption:='Lista Acciones Disponibles para la Venta';
    InhuSinServ.nroacc:=trim(sector.Text);
    InhuSinServ.ShowModal;
  finally
   InhuSinServ.destroy;
  end;
//stream:=TMemoryStream.Create;
//
//Jpg:=TJPEGImage.Create;
//ImageEnVect1.BitmapResampleFilter:=rfBilinear;
//
//Jpg.Assign(ImageEnVect1.Bitmap);
//Jpg.SaveToFile('D:\Prueba.jpg');
//SaveImageEnDialog1.AttachedImageEnIO:=ImageEnVect1;
//SaveImageEnDialog1.FileName:='D:\Prueba.tif';
//SaveImageEnDialog1.Execute;

end;
procedure TGrafico_Parcelario.ZOOM1Click(Sender: TObject);
begin
  valzum:= valzum - 5;
  ImageEnVect1.Zoom:=valzum;
end;

procedure TGrafico_Parcelario.JvBitBtn3Click(Sender: TObject);
begin
rvsp.Execute;
end;

procedure TGrafico_Parcelario.RvSPPrint(Sender: TObject);
var posfx,posfy,final,salto,posw,sd1,posn:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
     with RvSP do begin
       Imagen1 := TBitMap.Create;
       PathLogo:=modulo2.path_todo + '\ImagenesSectores\Sector' + trim(sector.Text)+'.jpg';
       if FileExists(PathLogo) then begin
         Image1.Picture.LoadFromFile(PathLogo);
         Imagen1.Assign(Image1.Picture.Graphic);
         BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+205,posfy+290,Imagen1);
       end;
       Imagen1.Free;
       //Logo:=posy+33;
     end;
   end;
begin
  try
  posfx:=1.5;
  posfy:=2;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  except
  end;
end;

procedure TGrafico_Parcelario.Button1Click(Sender: TObject);
begin
panel1.Visible:=false;
end;

end.

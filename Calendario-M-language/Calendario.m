let
    Origem = #date(2021,1,1),
    QtdeDias = 365,
    ListaDatas = List.Dates(Origem,QtdeDias,#duration(1,0,0,0)),
    TabelaDatas = Table.FromList(ListaDatas, Splitter.SplitByNothing(),{"Data"},null,ExtraValues.Error),
    TipoDatas = Table.TransformColumnTypes(TabelaDatas,{{"Data", type date}})
in
    TipoDatas

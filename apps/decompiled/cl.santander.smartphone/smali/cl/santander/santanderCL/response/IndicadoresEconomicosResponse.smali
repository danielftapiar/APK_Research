.class public Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
.super Ljava/lang/Object;
.source "IndicadoresEconomicosResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field indicadoresAlza:Lcl/santander/santanderCL/data/MatrizIndicadores;

.field indicadoresBaja:Lcl/santander/santanderCL/data/MatrizIndicadores;

.field indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field tasaCapatacion30:Ljava/lang/String;

.field tasaCapatacion90:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private comprobarDatos(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dato"    # Ljava/lang/String;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getIndicadoresAlza()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresAlza:Lcl/santander/santanderCL/data/MatrizIndicadores;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresAlza:Lcl/santander/santanderCL/data/MatrizIndicadores;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizIndicadores;->getMatriz()Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getIndicadoresBaja()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresBaja:Lcl/santander/santanderCL/data/MatrizIndicadores;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresBaja:Lcl/santander/santanderCL/data/MatrizIndicadores;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizIndicadores;->getMatriz()Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getIndicadoresDia()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizIndicadores;->getMatriz()Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getTasaCapatacion30()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->tasaCapatacion30:Ljava/lang/String;

    return-object v0
.end method

.method public getTasaCapatacion90()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->tasaCapatacion90:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 21
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v10, 0x0

    .line 33
    .local v10, "fechaAux":Ljava/util/Date;
    if-eqz p1, :cond_3

    .line 34
    const-string v16, "OUTPUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 35
    .local v13, "root":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 36
    .local v6, "data":Ljava/lang/Object;
    if-eqz v13, :cond_3

    instance-of v0, v13, Lorg/ksoap2/serialization/SoapObject;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v16, v13

    .line 37
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    const-string v17, "INFO"

    invoke-virtual/range {v16 .. v17}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    new-instance v16, Lcl/santander/santanderCL/data/response/Info;

    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    .end local v6    # "data":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object/from16 v16, v13

    .line 42
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    const-string v17, "ESCALARES"

    invoke-virtual/range {v16 .. v17}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 43
    .restart local v6    # "data":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 47
    :try_start_0
    const-string v17, "FECHA"

    .line 48
    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 47
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 48
    const-string v17, "dd/MM/yyyy"

    .line 46
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 55
    :goto_0
    const/4 v9, 0x0

    .line 60
    .local v9, "fecha":Ljava/util/Date;
    new-instance v16, Lcl/santander/santanderCL/data/MatrizIndicadores;

    const/16 v17, 0x8

    invoke-direct/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    .line 64
    :try_start_1
    const-string v17, "FECHABASEIPSA"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 63
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 65
    const-string v17, "dd/MM/yyyy"

    .line 63
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 74
    :goto_1
    const-string v11, "IPSA"

    .line 75
    .local v11, "indicador":Ljava/lang/String;
    const-string v17, "VALORIPSA"

    move-object/from16 v16, v6

    .line 76
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 75
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, "valor":Ljava/lang/String;
    :try_start_2
    const-string v16, ","

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    .line 85
    :goto_2
    const-string v17, "VARDIARIAIPSA"

    move-object/from16 v16, v6

    .line 86
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 85
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, "variacion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    .line 89
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "."

    const-string v20, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v11, v1, v2}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 95
    :try_start_3
    const-string v17, "FECHABASEIGPA"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 94
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 96
    const-string v17, "dd/MM/yyyy"

    .line 94
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    .line 104
    :goto_3
    const-string v11, "IGPA"

    .line 105
    const-string v17, "VALORIGPA"

    move-object/from16 v16, v6

    .line 106
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 105
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v14

    .line 110
    :try_start_4
    const-string v16, ","

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 116
    :goto_4
    const-string v17, "VARDIARIAIGPA"

    move-object/from16 v16, v6

    .line 117
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v15

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "."

    const-string v20, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v11, v1, v2}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 124
    const-string v11, "UF"

    .line 128
    :try_start_5
    const-string v17, "VALORUF"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 127
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 128
    const/16 v17, 0x5

    .line 127
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 128
    const/16 v17, 0x2

    .line 127
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v14

    .line 136
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 137
    const-string v19, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v11, v14, v2}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 139
    const-string v11, "IVP"

    .line 141
    const-string v17, "VALORIVP"

    move-object/from16 v16, v6

    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 140
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 141
    const/16 v17, 0x2

    .line 140
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v11, v2, v3}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 145
    const-string v11, "D\u00f3lar (Acuerdo)"

    .line 148
    :try_start_6
    const-string v17, "VALORDOLARACUERDO"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 147
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 150
    .local v4, "cant":D
    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v4, v4, v16

    .line 152
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v14

    .line 158
    .end local v4    # "cant":D
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 159
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v11, v2, v3}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 161
    const-string v11, "D\u00f3lar (Observado)"

    .line 166
    :try_start_7
    const-string v17, "VALDOLOBS"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 165
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 168
    .restart local v4    # "cant":D
    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v4, v4, v16

    .line 170
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v14

    .line 176
    .end local v4    # "cant":D
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v11, v2, v3}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 180
    const-string v11, "IPC"

    .line 183
    :try_start_8
    const-string v17, "FECHAIPC"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 182
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 183
    const-string v17, "yyyy-MM-dd"

    .line 182
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v9

    .line 194
    :goto_8
    :try_start_9
    const-string v17, "VALIPC"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 193
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 194
    const/16 v17, 0x2

    .line 193
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v15

    .line 199
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    const-string v18, "-"

    .line 200
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v11, v1, v2}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 202
    const-string v11, "UTM"

    .line 205
    :try_start_a
    const-string v17, "FECHAUTM"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 204
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 205
    const-string v17, "yyyy-MM-dd"

    .line 204
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v9

    .line 216
    :goto_a
    :try_start_b
    const-string v17, "VALUTM"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 215
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 216
    const/16 v17, 0x2

    .line 215
    invoke-static/range {v16 .. v17}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v14

    .line 221
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresDia:Lcl/santander/santanderCL/data/MatrizIndicadores;

    move-object/from16 v16, v0

    new-instance v17, Lcl/santander/santanderCL/data/response/ItemIndicador;

    .line 222
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->comprobarDatos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v11, v1, v2}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {v16 .. v17}, Lcl/santander/santanderCL/data/MatrizIndicadores;->add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 226
    :try_start_c
    new-instance v17, Ljava/lang/StringBuilder;

    .line 228
    const-string v18, "VALTASA30"

    move-object v0, v6

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v16, v0

    .line 227
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    .line 228
    const/16 v18, 0x8

    .line 227
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 228
    const/16 v18, 0x2

    .line 226
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    const-string v16, "%"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 226
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->tasaCapatacion30:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 236
    :goto_c
    :try_start_d
    new-instance v16, Ljava/lang/StringBuilder;

    .line 238
    const-string v17, "VALTASA90"

    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    .line 237
    .end local v6    # "data":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v17

    .line 238
    const/16 v18, 0x8

    .line 237
    invoke-static/range {v17 .. v18}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 238
    const/16 v18, 0x2

    .line 236
    invoke-static/range {v17 .. v18}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 236
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->tasaCapatacion90:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 246
    .end local v9    # "fecha":Ljava/util/Date;
    .end local v11    # "indicador":Ljava/lang/String;
    .end local v14    # "valor":Ljava/lang/String;
    .end local v15    # "variacion":Ljava/lang/String;
    :cond_1
    :goto_d
    check-cast v13, Lorg/ksoap2/serialization/SoapObject;

    .end local v13    # "root":Ljava/lang/Object;
    const-string v16, "MATRICES"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 247
    .restart local v6    # "data":Ljava/lang/Object;
    if-eqz v6, :cond_3

    move-object/from16 v16, v6

    .line 248
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 249
    const-string v17, "MATRIZDETALLEALZAS"

    invoke-virtual/range {v16 .. v17}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 250
    .local v12, "matrices":Ljava/lang/Object;
    if-eqz v12, :cond_2

    instance-of v0, v12, Lorg/ksoap2/serialization/SoapObject;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 251
    new-instance v16, Lcl/santander/santanderCL/data/MatrizIndicadores;

    .line 252
    check-cast v12, Lorg/ksoap2/serialization/SoapObject;

    .line 253
    .end local v12    # "matrices":Ljava/lang/Object;
    sget-object v17, Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;->ALZA:Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcl/santander/santanderCL/data/MatrizIndicadores;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;Ljava/util/Date;)V

    .line 251
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresAlza:Lcl/santander/santanderCL/data/MatrizIndicadores;

    .line 255
    :cond_2
    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    .line 256
    .end local v6    # "data":Ljava/lang/Object;
    const-string v16, "MATRIZDETALLEBAJAS"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 257
    .restart local v12    # "matrices":Ljava/lang/Object;
    if-eqz v12, :cond_3

    instance-of v0, v12, Lorg/ksoap2/serialization/SoapObject;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 258
    new-instance v16, Lcl/santander/santanderCL/data/MatrizIndicadores;

    .line 259
    check-cast v12, Lorg/ksoap2/serialization/SoapObject;

    .line 260
    .end local v12    # "matrices":Ljava/lang/Object;
    sget-object v17, Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;->BAJA:Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcl/santander/santanderCL/data/MatrizIndicadores;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;Ljava/util/Date;)V

    .line 258
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->indicadoresBaja:Lcl/santander/santanderCL/data/MatrizIndicadores;

    .line 268
    :cond_3
    return-void

    .line 49
    .restart local v6    # "data":Ljava/lang/Object;
    .restart local v13    # "root":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 50
    .local v7, "e":Ljava/text/ParseException;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v16, "FECHA:"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v18, "FECHA"

    move-object/from16 v16, v6

    .line 52
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 51
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 50
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 66
    .end local v7    # "e":Ljava/text/ParseException;
    .restart local v9    # "fecha":Ljava/util/Date;
    :catch_1
    move-exception v7

    .line 67
    .restart local v7    # "e":Ljava/text/ParseException;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v16, "FECHABASEIPSA UTM:"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v18, "FECHABASEIPSA"

    move-object/from16 v16, v6

    .line 69
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 68
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 67
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 81
    .end local v7    # "e":Ljava/text/ParseException;
    .restart local v11    # "indicador":Ljava/lang/String;
    .restart local v14    # "valor":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 82
    .local v8, "ex":Ljava/lang/Exception;
    const-string v17, "VALORIPSA"

    move-object/from16 v16, v6

    .line 83
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 82
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 97
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v15    # "variacion":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 98
    .restart local v7    # "e":Ljava/text/ParseException;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v16, "FECHABASEIGPA UTM:"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v18, "FECHABASEIGPA"

    move-object/from16 v16, v6

    .line 100
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 99
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 98
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 111
    .end local v7    # "e":Ljava/text/ParseException;
    :catch_4
    move-exception v8

    .line 112
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v17, "VALORIGPA"

    move-object/from16 v16, v6

    .line 113
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 112
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 132
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 133
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v14, "-"

    goto/16 :goto_5

    .line 154
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v8

    .line 155
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v14, ""

    goto/16 :goto_6

    .line 173
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_7
    move-exception v8

    .line 174
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v14, ""

    goto/16 :goto_7

    .line 184
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_8
    move-exception v7

    .line 185
    .restart local v7    # "e":Ljava/text/ParseException;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v16, "FECHAIPC UTM:"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v18, "FECHAIPC"

    move-object/from16 v16, v6

    .line 187
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 186
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 185
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_8

    .line 195
    .end local v7    # "e":Ljava/text/ParseException;
    :catch_9
    move-exception v8

    .line 196
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v15, ""

    goto/16 :goto_9

    .line 206
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_a
    move-exception v7

    .line 207
    .restart local v7    # "e":Ljava/text/ParseException;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v16, "FECHAUTM:"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v18, "FECHAUTM"

    move-object/from16 v16, v6

    .line 209
    check-cast v16, Lorg/ksoap2/serialization/SoapObject;

    .line 208
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 207
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_a

    .line 217
    .end local v7    # "e":Ljava/text/ParseException;
    :catch_b
    move-exception v8

    .line 218
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v14, ""

    goto/16 :goto_b

    .line 230
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_c
    move-exception v8

    .line 231
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v16, "-"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->tasaCapatacion30:Ljava/lang/String;

    goto/16 :goto_c

    .line 240
    .end local v6    # "data":Ljava/lang/Object;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_d
    move-exception v8

    .line 241
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v16, "-"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->tasaCapatacion90:Ljava/lang/String;

    goto/16 :goto_d
.end method

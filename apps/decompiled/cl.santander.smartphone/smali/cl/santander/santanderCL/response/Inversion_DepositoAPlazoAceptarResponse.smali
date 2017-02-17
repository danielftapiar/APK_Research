.class public Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
.super Ljava/lang/Object;
.source "Inversion_DepositoAPlazoAceptarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field fechaInversion:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field numeroTarjera:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptaciones()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/MatrizProductos;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(I)V

    goto :goto_0
.end method

.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->fechaInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getNumeroTarjera()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->numeroTarjera:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 17
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_2

    .line 41
    const-string v2, "OUTPUT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 42
    .local v15, "root":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 43
    .local v11, "data":Ljava/lang/Object;
    if-eqz v15, :cond_2

    instance-of v2, v15, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_2

    move-object v2, v15

    .line 44
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 45
    if-eqz v11, :cond_0

    .line 46
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v11, Lorg/ksoap2/serialization/SoapObject;

    .end local v11    # "data":Ljava/lang/Object;
    invoke-direct {v2, v11}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v2, v15

    .line 49
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "ESCALARES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 52
    .restart local v11    # "data":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 54
    const-string v3, "FECHA-INVERSION"

    move-object v2, v11

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->fechaInversion:Ljava/lang/String;

    .line 55
    const-string v3, "NUMERO-TARJETA"

    move-object v2, v11

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->numeroTarjera:Ljava/lang/String;

    .line 57
    const-string v2, "MATRIZ-DESAFIO"

    check-cast v11, Lorg/ksoap2/serialization/SoapObject;

    .end local v11    # "data":Ljava/lang/Object;
    invoke-static {v2, v11}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "Aux":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "des":[Ljava/lang/String;
    array-length v2, v12

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 60
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->coordenada1:Ljava/lang/String;

    .line 61
    const/4 v2, 0x1

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->coordenada2:Ljava/lang/String;

    .line 62
    const/4 v2, 0x2

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->coordenada3:Ljava/lang/String;

    .line 66
    .end local v9    # "Aux":Ljava/lang/String;
    .end local v12    # "des":[Ljava/lang/String;
    :cond_1
    check-cast v15, Lorg/ksoap2/serialization/SoapObject;

    .end local v15    # "root":Ljava/lang/Object;
    const-string v2, "MATRICES"

    invoke-virtual {v15, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 67
    .restart local v11    # "data":Ljava/lang/Object;
    if-eqz v11, :cond_2

    .line 68
    check-cast v11, Lorg/ksoap2/serialization/SoapObject;

    .line 69
    .end local v11    # "data":Ljava/lang/Object;
    const-string v2, "MATRIZ-CAPTACIONES"

    invoke-virtual {v11, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 70
    .local v14, "matrices":Ljava/lang/Object;
    if-eqz v14, :cond_2

    instance-of v2, v14, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_2

    .line 72
    new-instance v10, Lcl/santander/santanderCL/data/MatrizCaptaciones;

    check-cast v14, Lorg/ksoap2/serialization/SoapObject;

    .end local v14    # "matrices":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->divisa:Ljava/lang/String;

    invoke-direct {v10, v14, v2}, Lcl/santander/santanderCL/data/MatrizCaptaciones;-><init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    .line 74
    .local v10, "captacionesAUX":Lcl/santander/santanderCL/data/MatrizCaptaciones;
    if-eqz v10, :cond_2

    .line 75
    new-instance v2, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v10}, Lcl/santander/santanderCL/data/MatrizCaptaciones;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 77
    invoke-virtual {v10}, Lcl/santander/santanderCL/data/MatrizCaptaciones;->getCaptaciones()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    .end local v10    # "captacionesAUX":Lcl/santander/santanderCL/data/MatrizCaptaciones;
    :cond_2
    return-void

    .line 77
    .restart local v10    # "captacionesAUX":Lcl/santander/santanderCL/data/MatrizCaptaciones;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcl/santander/santanderCL/data/response/ItemCaptacion;

    .line 79
    .local v13, "itemCap":Lcl/santander/santanderCL/data/response/ItemCaptacion;
    new-instance v1, Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v13}, Lcl/santander/santanderCL/data/response/ItemCaptacion;->getNumeroContrato()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v13}, Lcl/santander/santanderCL/data/response/ItemCaptacion;->getProducto()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v13}, Lcl/santander/santanderCL/data/response/ItemCaptacion;->getMontoDisponible()Ljava/lang/String;

    move-result-object v4

    .line 82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->divisa:Ljava/lang/String;

    .line 83
    invoke-virtual {v13}, Lcl/santander/santanderCL/data/response/ItemCaptacion;->getNumeroPan()Ljava/lang/String;

    move-result-object v6

    .line 84
    sget-object v7, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v13}, Lcl/santander/santanderCL/data/response/ItemCaptacion;->getCupo()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-direct/range {v1 .. v8}, Lcl/santander/santanderCL/data/response/ItemProducto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;Ljava/lang/String;)V

    .line 85
    .local v1, "itemProc":Lcl/santander/santanderCL/data/response/ItemProducto;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    goto :goto_0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 32
    iput-object p2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->divisa:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V

    .line 35
    return-void
.end method

.class public Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
.super Ljava/lang/Object;
.source "Cobro_DepositoAPlazoAceptarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field bis57:Ljava/lang/String;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field descripcionDeposito:Ljava/lang/String;

.field descripcionMoneda:Ljava/lang/String;

.field fechaInversion:Ljava/lang/String;

.field fechaVencimiento:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field listaDepositos:Lcl/santander/santanderCL/data/MatrizProductos;

.field montoACobrar:Ljava/lang/String;

.field montoInversion:Ljava/lang/String;

.field numeroDeposito:Ljava/lang/String;

.field numeroTarjeta:Ljava/lang/String;

.field plazo:Ljava/lang/String;

.field simboloTipoReajuste:Ljava/lang/String;

.field tasaInteres:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBis57()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->bis57:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->descripcionDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->descripcionMoneda:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->fechaInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaVencimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->fechaVencimiento:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getListaDepositos()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->listaDepositos:Lcl/santander/santanderCL/data/MatrizProductos;

    return-object v0
.end method

.method public getMontoACobrar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->montoACobrar:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->montoInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->numeroDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTarjeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->numeroTarjeta:Ljava/lang/String;

    return-object v0
.end method

.method public getPlazo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->plazo:Ljava/lang/String;

    return-object v0
.end method

.method public getSimboloTipoReajuste()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->simboloTipoReajuste:Ljava/lang/String;

    const-string v1, "(UF)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "($)"

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->simboloTipoReajuste:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTasaInteres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->tasaInteres:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 10
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v7, "OUTPUT"

    invoke-virtual {p1, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "root":Ljava/lang/Object;
    if-eqz v6, :cond_3

    move-object v7, v6

    .line 43
    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    const-string v8, "INFO"

    invoke-virtual {v7, v8}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "aux":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 45
    new-instance v7, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-direct {v7, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v7, v6

    .line 48
    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    const-string v8, "ESCALARES"

    invoke-virtual {v7, v8}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 51
    const-string v8, "BIS57"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->bis57:Ljava/lang/String;

    .line 52
    const-string v8, "NUMERO_TARJETA"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->numeroTarjeta:Ljava/lang/String;

    .line 53
    const-string v8, "NUMERO_DEPOSITO"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->numeroDeposito:Ljava/lang/String;

    .line 54
    const-string v8, "DESCRIPCION_TIPO_DEPOSITO"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->descripcionDeposito:Ljava/lang/String;

    .line 55
    const-string v8, "DESCRIPCION_MONEDA"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->descripcionMoneda:Ljava/lang/String;

    .line 56
    const-string v8, "MONTO_INVERSION"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->montoInversion:Ljava/lang/String;

    .line 57
    const-string v8, "PLAZO"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->plazo:Ljava/lang/String;

    .line 58
    const-string v8, "TASA_INTERES"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->tasaInteres:Ljava/lang/String;

    .line 59
    const-string v8, "FECHA_INVERSION"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->fechaInversion:Ljava/lang/String;

    .line 60
    const-string v8, "FECHA_VENCIMIENTO"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->fechaVencimiento:Ljava/lang/String;

    .line 61
    const-string v8, "MONTO_A_COBRAR"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->montoACobrar:Ljava/lang/String;

    .line 62
    const-string v8, "SIMBOLO_TIPO_REAJUSTE"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->simboloTipoReajuste:Ljava/lang/String;

    .line 65
    const-string v7, "MATRIZ_DESAFIO"

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-static {v7, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "Aux":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "des":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 68
    const/4 v7, 0x0

    aget-object v7, v2, v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->coordenada1:Ljava/lang/String;

    .line 69
    const/4 v7, 0x1

    aget-object v7, v2, v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->coordenada2:Ljava/lang/String;

    .line 70
    const/4 v7, 0x2

    aget-object v7, v2, v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->coordenada3:Ljava/lang/String;

    .line 74
    .end local v0    # "Aux":Ljava/lang/String;
    .end local v2    # "des":[Ljava/lang/String;
    :cond_1
    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    .end local v6    # "root":Ljava/lang/Object;
    const-string v7, "MATRICES"

    invoke-virtual {v6, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 76
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 77
    .end local v1    # "aux":Ljava/lang/Object;
    const-string v7, "MATRIZ-CAPTACIONES"

    invoke-virtual {v1, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, "matrices":Ljava/lang/Object;
    new-instance v7, Lcl/santander/santanderCL/data/MatrizProductos;

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "matrices":Ljava/lang/Object;
    sget-object v8, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->CAPTACIONES:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-direct {v7, v4, v8}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    iput-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->listaDepositos:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 80
    iget-object v7, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->listaDepositos:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/MatrizProductos;->getMatriz()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 94
    :cond_3
    return-void

    .line 80
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 82
    .local v5, "producto":Lcl/santander/santanderCL/data/response/ItemProducto;
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 84
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 85
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/ItemProducto;->setTipo(Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)V

    .line 83
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.class public Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
.super Ljava/lang/Object;
.source "AccionesVentaSolicitudResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field cantidad:Ljava/lang/String;

.field cartera:Lcl/santander/santanderCL/data/MatrizCartera;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field cuentaCustodia:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field numeroTarjeta:Ljava/lang/String;

.field precioMercado:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getCantidad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cantidad:Ljava/lang/String;

    return-object v0
.end method

.method public getCartera()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCartera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cartera:Lcl/santander/santanderCL/data/MatrizCartera;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cartera:Lcl/santander/santanderCL/data/MatrizCartera;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizCartera;->getCartera()Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCustodia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCustodiaScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cuentaCustodia:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMontoFinal()Ljava/lang/String;
    .locals 9

    .prologue
    .line 121
    const-string v5, ""

    .line 124
    .local v5, "resp":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->precioMercado:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v3

    .line 125
    .local v3, "precio":D
    iget-object v6, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cantidad:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v0

    .line 128
    .local v0, "cantidad":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v6, v7}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 133
    .end local v0    # "cantidad":D
    .end local v3    # "precio":D
    :goto_0
    return-object v5

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error Calculo Monto final :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->precioMercado:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cantidad:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNumeroTarjeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->numeroTarjeta:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTarjetaScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->numeroTarjeta:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecioMercado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->precioMercado:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 7
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 39
    if-eqz p1, :cond_2

    .line 40
    const-string v5, "OUTPUT"

    invoke-virtual {p1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 43
    .local v4, "root":Ljava/lang/Object;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 44
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    const-string v6, "INFO"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "aux":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 46
    new-instance v5, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-direct {v5, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v5, v4

    .line 50
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    const-string v6, "ESCALARES"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 54
    const-string v6, "CUENTA_CUSTODIA"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cuentaCustodia:Ljava/lang/String;

    .line 55
    const-string v6, "NUMEROTARJETA"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->numeroTarjeta:Ljava/lang/String;

    .line 56
    const-string v5, "MATRIZDESAFIO"

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-static {v5, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "Aux":Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "des":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 59
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->coordenada1:Ljava/lang/String;

    .line 60
    const/4 v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->coordenada2:Ljava/lang/String;

    .line 61
    const/4 v5, 0x2

    aget-object v5, v2, v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->coordenada3:Ljava/lang/String;

    .line 67
    .end local v0    # "Aux":Ljava/lang/String;
    .end local v2    # "des":[Ljava/lang/String;
    :cond_1
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "root":Ljava/lang/Object;
    const-string v5, "MATRICES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 69
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 70
    .end local v1    # "aux":Ljava/lang/Object;
    const-string v5, "MATRIZCARTERA"

    invoke-virtual {v1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    .local v3, "matrices":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v5, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v5, :cond_2

    .line 72
    new-instance v5, Lcl/santander/santanderCL/data/MatrizCartera;

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "matrices":Ljava/lang/Object;
    invoke-direct {v5, v3}, Lcl/santander/santanderCL/data/MatrizCartera;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cartera:Lcl/santander/santanderCL/data/MatrizCartera;

    .line 79
    :cond_2
    return-void
.end method

.method public setCantidad(Ljava/lang/String;)V
    .locals 0
    .param p1, "cantidad"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->cantidad:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPrecioMercado(Ljava/lang/String;)V
    .locals 0
    .param p1, "precioMercado"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->precioMercado:Ljava/lang/String;

    .line 155
    return-void
.end method

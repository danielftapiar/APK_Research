.class public Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
.super Ljava/lang/Object;
.source "Transf_Supergiro_IngresoResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field banco:Ljava/lang/String;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field monto:Ljava/lang/String;

.field nombrePersona:Ljava/lang/String;

.field numeroTarjeta:Ljava/lang/String;

.field rutDestino:Ljava/lang/String;

.field rutOrigen:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field tipoCuenta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->monto:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNombrePersona()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->nombrePersona:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTarjeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->numeroTarjeta:Ljava/lang/String;

    return-object v0
.end method

.method public getRutDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getRutDestinoScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutDestino:Ljava/lang/String;

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutDestino:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRutOrigen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutOrigen:Ljava/lang/String;

    return-object v0
.end method

.method public getRutOrigenScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutOrigen:Ljava/lang/String;

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutOrigen:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->tipoCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p1, :cond_2

    .line 43
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 47
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 49
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 54
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "ESCALARES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 56
    const-string v4, "NUMEROTARJETA"

    move-object v3, v0

    .line 57
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 56
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->numeroTarjeta:Ljava/lang/String;

    .line 59
    const-string v4, "MATRIZDESAFIO"

    move-object v3, v0

    .line 60
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 59
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "desafio":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 63
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->coordenada1:Ljava/lang/String;

    .line 64
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->coordenada2:Ljava/lang/String;

    .line 65
    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->coordenada3:Ljava/lang/String;

    .line 67
    :cond_1
    const-string v4, "SEGMENTO"

    move-object v3, v0

    .line 68
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 67
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->segmento:Ljava/lang/String;

    .line 71
    const-string v4, "NOMPERSONA"

    move-object v3, v0

    .line 72
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 71
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->nombrePersona:Ljava/lang/String;

    .line 73
    const-string v4, "TIPOCUENTA"

    move-object v3, v0

    .line 74
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 73
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->tipoCuenta:Ljava/lang/String;

    .line 75
    const-string v4, "CUENTA"

    move-object v3, v0

    .line 76
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 75
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->cuenta:Ljava/lang/String;

    .line 77
    const-string v4, "BANCO"

    move-object v3, v0

    .line 78
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 77
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->banco:Ljava/lang/String;

    .line 79
    const-string v3, "MONTO"

    .line 80
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 79
    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->monto:Ljava/lang/String;

    .line 90
    .end local v1    # "desafio":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setRutDestino(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutDestino"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutDestino:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setRutOrigen(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutOrigen"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->rutOrigen:Ljava/lang/String;

    .line 15
    return-void
.end method

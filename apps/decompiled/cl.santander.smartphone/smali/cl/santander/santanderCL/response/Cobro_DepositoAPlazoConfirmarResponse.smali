.class public Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
.super Ljava/lang/Object;
.source "Cobro_DepositoAPlazoConfirmarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field cuentaAbono:Ljava/lang/String;

.field descripcionTipoDeposito:Ljava/lang/String;

.field descripcionTipoReajuste:Ljava/lang/String;

.field fechaCobro:Ljava/lang/String;

.field fechaInversion:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field intentosFallidos:Ljava/lang/String;

.field interesesGanados:Ljava/lang/String;

.field montoCobrado:Ljava/lang/String;

.field montoInvertido:Ljava/lang/String;

.field nombreCliente:Ljava/lang/String;

.field numeroDeposito:Ljava/lang/String;

.field plazo:Ljava/lang/String;

.field simboloTipoReajuste:Ljava/lang/String;

.field tasaInteres:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCuentaAbono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->cuentaAbono:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionTipoDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->descripcionTipoDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionTipoReajuste()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->descripcionTipoReajuste:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaCobro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->fechaCobro:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->fechaInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getIntentosFallidos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->intentosFallidos:Ljava/lang/String;

    return-object v0
.end method

.method public getInteresesGanados()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->interesesGanados:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoCobrado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->montoCobrado:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoInvertido()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->montoInvertido:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->nombreCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->numeroDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getPlazo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->plazo:Ljava/lang/String;

    return-object v0
.end method

.method public getSimboloTipoReajuste()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->simboloTipoReajuste:Ljava/lang/String;

    const-string v1, "(UF)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "($)"

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->simboloTipoReajuste:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTasaInteres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->tasaInteres:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 36
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 38
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 41
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 45
    const-string v3, "INTENTOS_FALLIDOS_RESTANTES"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->intentosFallidos:Ljava/lang/String;

    .line 46
    const-string v3, "NUMERO_DEPOSITO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->numeroDeposito:Ljava/lang/String;

    .line 47
    const-string v3, "NOMBRE_CLIENTE"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->nombreCliente:Ljava/lang/String;

    .line 48
    const-string v3, "CUENTA_ABONO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->cuentaAbono:Ljava/lang/String;

    .line 50
    const-string v3, "DESCRIPCION_TIPO_DEPOSITO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->descripcionTipoDeposito:Ljava/lang/String;

    .line 51
    const-string v3, "DESCRIPCION_TIPO_REAJUSTE"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->descripcionTipoReajuste:Ljava/lang/String;

    .line 52
    const-string v3, "PLAZO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->plazo:Ljava/lang/String;

    .line 54
    const-string v3, "TASA_INTERES"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->tasaInteres:Ljava/lang/String;

    .line 55
    const-string v3, "MONTO_INVERTIDO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->montoInvertido:Ljava/lang/String;

    .line 56
    const-string v3, "MONTO_COBRADO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->montoCobrado:Ljava/lang/String;

    .line 57
    const-string v3, "INTERESES_GANADOS"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->interesesGanados:Ljava/lang/String;

    .line 58
    const-string v3, "FECHA_INVERSION"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->fechaInversion:Ljava/lang/String;

    .line 59
    const-string v3, "FECHA_COBRO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->fechaCobro:Ljava/lang/String;

    .line 60
    const-string v2, "SIMBOLO_TIPO_REAJUSTE"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->simboloTipoReajuste:Ljava/lang/String;

    .line 69
    :cond_1
    return-void
.end method

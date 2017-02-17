.class public Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
.super Ljava/lang/Object;
.source "Inversion_DepositoAPlazoConfirmarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field private divisa:Ljava/lang/String;

.field private fechaAlta:Ljava/lang/String;

.field private fechaProxVencimiento:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field private interesesEfectivo:Ljava/lang/String;

.field private interesesPendiente:Ljava/lang/String;

.field private nombreCliente:Ljava/lang/String;

.field private numeroDeposito:Ljava/lang/String;

.field private saldoAPagar:Ljava/lang/String;

.field private signoMoneda:Ljava/lang/String;

.field private tipoDeposito:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDivisa()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->signoMoneda:Ljava/lang/String;

    const-string v1, "(UF)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "UF"

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Pesos"

    goto :goto_0
.end method

.method public getFechaAlta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->fechaAlta:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaProxVencimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->fechaProxVencimiento:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getInteresesEfectivo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesEfectivo:Ljava/lang/String;

    return-object v0
.end method

.method public getInteresesEfectivoScreen()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesEfectivo:Ljava/lang/String;

    .line 153
    .local v0, "resp":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesEfectivo:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    .end local v0    # "resp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 154
    .restart local v0    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInteresesPendiente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesPendiente:Ljava/lang/String;

    return-object v0
.end method

.method public getInteresesPendienteScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesPendiente:Ljava/lang/String;

    .line 138
    .local v0, "resp":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->signoMoneda:Ljava/lang/String;

    const-string v2, "(UF)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesPendiente:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .end local v0    # "resp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 141
    .restart local v0    # "resp":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesPendiente:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNombreCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->nombreCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->numeroDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoAPagar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->saldoAPagar:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoAPagarScreen()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 120
    iget-object v1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->signoMoneda:Ljava/lang/String;

    const-string v2, "(UF)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->saldoAPagar:Ljava/lang/String;

    invoke-static {v1, v3}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "cantidad":Ljava/lang/String;
    invoke-static {v0, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 124
    .end local v0    # "cantidad":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->saldoAPagar:Ljava/lang/String;

    invoke-static {v1, v3}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "cantidad":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSignoMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->signoMoneda:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->tipoDeposito:Ljava/lang/String;

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
    .line 35
    if-eqz p1, :cond_1

    .line 36
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "root":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 38
    .local v0, "data":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 39
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 44
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 46
    const-string v3, "NUMERO-DEPOSITO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->numeroDeposito:Ljava/lang/String;

    .line 47
    const-string v3, "NOMBRE-CLIENTE"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->nombreCliente:Ljava/lang/String;

    .line 48
    const-string v3, "DIVISA"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->divisa:Ljava/lang/String;

    .line 49
    const-string v3, "FECHA-ALTA"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->fechaAlta:Ljava/lang/String;

    .line 50
    const-string v3, "FECHA-PROXIMO-VCTO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->fechaProxVencimiento:Ljava/lang/String;

    .line 51
    const-string v3, "SALDO-PAGAR"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->saldoAPagar:Ljava/lang/String;

    .line 52
    const-string v3, "INTERES-PENDIENTE"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesPendiente:Ljava/lang/String;

    .line 53
    const-string v3, "INTERES-EFECTIVO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->interesesEfectivo:Ljava/lang/String;

    .line 54
    const-string v3, "TIPO-DEPOSITO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->tipoDeposito:Ljava/lang/String;

    .line 55
    const-string v2, "SIGNO_MONEDA"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->signoMoneda:Ljava/lang/String;

    .line 65
    :cond_1
    return-void
.end method

.class public Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
.super Ljava/lang/Object;
.source "Inversion_DepositoAPlazoSimularResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

.field info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatos()Lcl/santander/santanderCL/data/DatosSimularDeposito;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 8
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 32
    if-eqz p1, :cond_2

    .line 33
    const-string v5, "OUTPUT"

    invoke-virtual {p1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    .local v4, "root":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 35
    .local v1, "data":Ljava/lang/Object;
    if-eqz v4, :cond_2

    instance-of v5, v4, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 36
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    const-string v6, "INFO"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    new-instance v5, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v5, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 41
    :cond_0
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "root":Ljava/lang/Object;
    const-string v5, "ESCALARES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 44
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "DESCRIPCION-SUB-PRODUCTO"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setDescripcion(Ljava/lang/String;)V

    .line 45
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "PLAZO"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setPlazo(Ljava/lang/String;)V

    .line 46
    iget-object v5, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getPlazo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 48
    :try_start_0
    iget-object v5, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getPlazo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setPlazo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :cond_1
    :goto_0
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "INDICADOR_INVERSION"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setIndicadorInversion(Ljava/lang/String;)V

    .line 61
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "DESCRIPCION_FECHA_INVERSION"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setDescripcionFechaInversion(Ljava/lang/String;)V

    .line 65
    :try_start_1
    const-string v6, "FECHA_INVERSION"

    move-object v0, v1

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v5, v0

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "fecha":Ljava/lang/String;
    iget-object v5, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v5, v3}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setFechaInversion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .end local v3    # "fecha":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "SIGNO_MONEDA"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setSignoMoneda(Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "TIPO-INTERES"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setTipoInteres(Ljava/lang/String;)V

    .line 80
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "INTERESES-PENDIENTES"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setInteresesPendientes(Ljava/lang/String;)V

    .line 84
    iget-object v6, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v7, "SALDO-TOTAL"

    move-object v5, v1

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setSaldoTotal(Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v6, "FECHA-VENCIMIENTO"

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-static {v6, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setFechaVencimiento(Ljava/lang/String;)V

    .line 95
    :cond_2
    return-void

    .line 68
    .restart local v1    # "data":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setFechaInversion(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    .line 26
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->datos:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0, p2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setDivisa(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V

    .line 28
    return-void
.end method

.method public setInfo(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 0
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 100
    iput-object p1, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 101
    return-void
.end method

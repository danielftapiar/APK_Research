.class public Lcl/santander/santanderCL/operations/DetalleSuscripcion;
.super Ljava/lang/Object;
.source "DetalleSuscripcion.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;

.field item:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

.field resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetalleSuscripcion(Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;)Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v7, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;-><init>()V

    .line 48
    .local v7, "resp":Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;
    const-string v0, "Mvld_WS_Consulta_Deuda_Valida_TarjCoordenadas/InformacionDeuda"

    .line 50
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 51
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getDETALLESUSCRIPCIONES()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 53
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "InformacionDeuda_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 60
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 62
    :catch_0
    move-exception v4

    .line 64
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 66
    :cond_0
    throw v4

    .line 68
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 70
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 71
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 73
    :cond_1
    throw v5

    .line 76
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;-><init>()V

    .line 90
    .local v0, "req":Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;->setInput(Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;)V

    .line 91
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->getDetalleSuscripcion(Lcl/santander/santanderCL/request/DetalleDesafioSuscripcionesRequest;)Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    .line 95
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->TARJETAS_ACTIVAS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 99
    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getSegmento()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setSegmento(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "obj":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getDetalle()Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getDetalle()Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    move-result-object v0

    .line 114
    :goto_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->item:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setDescripcion(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->item:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setEmpresa(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setCoordenada1(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setCoordenada2(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->resp:Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setCoordenada3(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->item:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getNumCVN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setNumCVN(Ljava/lang/String;)V

    .line 121
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .end local v0    # "obj":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    invoke-direct {v0}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;-><init>()V

    .restart local v0    # "obj":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    goto :goto_0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemSuscripcion;Ljava/lang/String;)V
    .locals 8
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    .param p2, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v7, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v7}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 36
    .local v7, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v7, p2}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->item:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    .line 41
    new-instance v0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getCodEFT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getNumCVN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getDatID1()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getSegmento()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;

    .line 43
    return-void
.end method

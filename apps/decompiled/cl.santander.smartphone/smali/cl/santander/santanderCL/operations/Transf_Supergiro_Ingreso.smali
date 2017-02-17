.class public Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;
.super Ljava/lang/Object;
.source "Transf_Supergiro_Ingreso.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;

.field resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranf_Supergiro_Ingreso(Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;)Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v7, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;-><init>()V

    .line 64
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    const-string v0, "Mvld_WS_Consulta_Deuda_Valida_TarjCoordenadas/IngresoSuperGiro"

    .line 66
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 68
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_SUPERGIRO_INGRESO()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 70
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "IngresoSuperGiro_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 77
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 79
    :catch_0
    move-exception v4

    .line 81
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 83
    :cond_0
    throw v4

    .line 85
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 87
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 88
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 90
    :cond_1
    throw v5

    .line 93
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 95
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
    .line 106
    new-instance v0, Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;-><init>()V

    .line 108
    .local v0, "req":Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;)V

    .line 109
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->getTranf_Supergiro_Ingreso(Lcl/santander/santanderCL/request/Tranf_Supergiro_IngresoRequest;)Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    .line 111
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->getRutDestino()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->setRutDestino(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->getRutOrigen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->setRutOrigen(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getSegmento()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setSegmento(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "rutOrigen"    # Ljava/lang/String;
    .param p3, "rutDestino"    # Ljava/lang/String;
    .param p4, "monto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v9, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v9}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 33
    .local v9, "rutOrigenVal":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v9, p2}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 34
    new-instance v8, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v8}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 35
    .local v8, "rutDestinoVal":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v8, p3}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 37
    if-gtz p4, :cond_0

    .line 38
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_SUPERGIROS_MAYOR_CERO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 41
    :cond_0
    rem-int/lit16 v0, p4, 0x1388

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_SUPERGIROS_MULTIPLO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 47
    :cond_1
    const v0, 0x30d40

    if-le p4, v0, :cond_2

    .line 48
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_SUPERGIROS_LIMITE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 54
    :cond_2
    new-instance v0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->BANCO:Ljava/lang/String;

    invoke-virtual {v8}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;

    .line 56
    return-void
.end method

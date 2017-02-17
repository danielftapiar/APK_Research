.class public Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;
.super Ljava/lang/Object;
.source "Transf_Supergiro_Realizar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field cuenta:Ljava/lang/String;

.field input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;

.field monto:I

.field resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

.field rutDestino:Ljava/lang/String;

.field rutOrigen:Ljava/lang/String;

.field tipoCuenta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranf_Supergiro_Realizar(Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;)Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v7, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;-><init>()V

    .line 73
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    const-string v0, "Mvld_HS_CCCKC210/RealizaSuperGiro"

    .line 75
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    .line 76
    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    .line 75
    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 78
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_SUPERGIRO_REALIZAR()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 81
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "RealizaSuperGiro_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 88
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 90
    :catch_0
    move-exception v4

    .line 92
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 94
    :cond_0
    throw v4

    .line 96
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 98
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 99
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 101
    :cond_1
    throw v5

    .line 104
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;-><init>()V

    .line 116
    .local v0, "req":Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;)V

    .line 118
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->getTranf_Supergiro_Realizar(Lcl/santander/santanderCL/request/Tranf_Supergiro_RealizarRequest;)Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    .line 120
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->monto:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->setMonto(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->cuenta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->setCuenta(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->rutDestino:Ljava/lang/String;

    invoke-static {v2}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->setRutDestino(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->tipoCuenta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->setTipoCuenta(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/DatosSupergiros;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "datos"    # Lcl/santander/santanderCL/data/DatosSupergiros;
    .param p3, "Idtrx"    # Ljava/lang/String;
    .param p4, "codigoSMS"    # Ljava/lang/String;
    .param p5, "RutDestino"    # Ljava/lang/String;
    .param p6, "RutOrigen"    # Ljava/lang/String;
    .param p7, "monto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 44
    move/from16 v0, p7

    iput v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->monto:I

    .line 45
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->cuenta:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p5

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->rutDestino:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p6

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->rutOrigen:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->tipoCuenta:Ljava/lang/String;

    .line 51
    new-instance v13, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v13}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 52
    .local v13, "rutOrigenVal":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 53
    new-instance v12, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v12}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 54
    .local v12, "rutDestinoVal":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0035"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getOficinaContrato()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "ccc":Ljava/lang/String;
    new-instance v1, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/DatosSupergiros;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v12}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 62
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v11}, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;

    .line 65
    return-void
.end method

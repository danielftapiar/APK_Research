.class public Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;
.super Ljava/lang/Object;
.source "Transf_Terceros_Verifica.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;

.field resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransf_Terceros_Verifica(Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;)Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v7, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;-><init>()V

    .line 69
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    const-string v0, "Mvld_Transferencias_a_Terceros_Verifica/Transferencias_a_Terceros_Verifica"

    .line 71
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 73
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_TERCEROS_VERIFICA()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 75
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Mvld_Transferencias_a_Terceros_Verifica_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 82
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 84
    :catch_0
    move-exception v4

    .line 86
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 88
    :cond_0
    throw v4

    .line 90
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 92
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 93
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 95
    :cond_1
    throw v5

    .line 98
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 100
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
    .line 109
    new-instance v0, Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;-><init>()V

    .line 110
    .local v0, "req":Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;)V

    .line 111
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->getTransf_Terceros_Verifica(Lcl/santander/santanderCL/request/Transf_Terceros_VerificaRequest;)Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    .line 113
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 116
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProducto"    # Ljava/lang/String;
    .param p4, "rutDestinatario"    # Ljava/lang/String;
    .param p5, "cuentaDestino"    # Ljava/lang/String;
    .param p6, "codBancoDestino"    # Ljava/lang/String;
    .param p7, "tipoCuenta"    # Ljava/lang/String;
    .param p8, "monto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v11, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v11}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 38
    .local v11, "rutClientAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v11, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 40
    new-instance v12, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v12}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 41
    .local v12, "rutDestinatarioAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 43
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p7

    .line 50
    :goto_0
    if-gtz p8, :cond_0

    .line 51
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE_CERO:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 54
    :cond_0
    const/16 v1, 0x7d0

    move/from16 v0, p8

    if-ge v0, v1, :cond_1

    .line 55
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE_2000:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 58
    :cond_1
    new-instance v1, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v10

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;

    .line 60
    return-void

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method

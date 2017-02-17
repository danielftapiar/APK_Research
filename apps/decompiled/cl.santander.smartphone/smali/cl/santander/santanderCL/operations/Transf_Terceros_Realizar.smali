.class public Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;
.super Ljava/lang/Object;
.source "Transf_Terceros_Realizar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;

.field resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransf_Terceros_Valida_OTP(Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v7, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;-><init>()V

    .line 67
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    const-string v0, "Mvld_Transferencias_a_Terceros_Valida_OTP/Transferencias_a_Terceros_Valida_OTP"

    .line 68
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 70
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_TERCEROS_VALIDA_OTP()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 72
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Mvld_Transferencias_a_Terceros_Valida_OTP_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 79
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 81
    :catch_0
    move-exception v4

    .line 83
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 85
    :cond_0
    throw v4

    .line 87
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 89
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 90
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 92
    :cond_1
    throw v5

    .line 95
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 97
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
    .line 108
    new-instance v0, Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;-><init>()V

    .line 109
    .local v0, "req":Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;)V

    .line 110
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->getTransf_Terceros_Valida_OTP(Lcl/santander/santanderCL/request/Transf_Terceros_Valida_OTPRequest;)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    .line 112
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 115
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProductoCliente"    # Ljava/lang/String;
    .param p4, "emailCliente"    # Ljava/lang/String;
    .param p5, "rutDestinatario"    # Ljava/lang/String;
    .param p6, "cuentaDestino"    # Ljava/lang/String;
    .param p7, "codProductoDestinatario"    # Ljava/lang/String;
    .param p8, "codBancoDestinatario"    # Ljava/lang/String;
    .param p9, "nombreDestinatario"    # Ljava/lang/String;
    .param p10, "emailDestinatario"    # Ljava/lang/String;
    .param p11, "comentarioMail"    # Ljava/lang/String;
    .param p12, "otp_Idtrx"    # Ljava/lang/String;
    .param p13, "codOtp"    # Ljava/lang/String;
    .param p14, "montoTransferir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 44
    mul-int/lit8 p14, p14, 0x64

    .line 46
    new-instance v18, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v18 .. v18}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 47
    .local v18, "rutClienteAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 48
    new-instance v19, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v19 .. v19}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 49
    .local v19, "rutDestinoAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;

    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p14

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v2 .. v17}, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;

    .line 58
    return-void
.end method

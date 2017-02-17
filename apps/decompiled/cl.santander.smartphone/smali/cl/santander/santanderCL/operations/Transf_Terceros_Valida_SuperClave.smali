.class public Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;
.super Ljava/lang/Object;
.source "Transf_Terceros_Valida_SuperClave.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;

.field resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransf_Terceros_Valida_SuperClave(Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v7, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;-><init>()V

    .line 96
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    const-string v0, "Mvld_Transferencias_a_Terceros_Val_Super_Clave/Transferencias_a_Terceros_Val_Super_Clave"

    .line 97
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 99
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_TERCEROS_VALIDA_SUPERCLAVE()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 101
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Mvld_Transferencias_a_Terceros_Val_Super_Clave_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 108
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 110
    :catch_0
    move-exception v4

    .line 112
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 114
    :cond_0
    throw v4

    .line 116
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 118
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 119
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 121
    :cond_1
    throw v5

    .line 124
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 126
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
    .line 136
    new-instance v0, Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;-><init>()V

    .line 137
    .local v0, "req":Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;)V

    .line 138
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->getTransf_Terceros_Valida_SuperClave(Lcl/santander/santanderCL/request/Transf_Terceros_Valida_SuperClaveRequest;)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    .line 140
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 143
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->resp:Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/LimitesTransferencias;I)V
    .locals 21
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
    .param p12, "coordenada1"    # Ljava/lang/String;
    .param p13, "coordenada2"    # Ljava/lang/String;
    .param p14, "coordenada3"    # Ljava/lang/String;
    .param p15, "limites"    # Lcl/santander/santanderCL/data/LimitesTransferencias;
    .param p16, "montoTransferir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/FormatException;,
            Lcl/santander/santanderCL/exceptions/LimiteTransferenciaException;,
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v15, ""

    .line 41
    .local v15, "montoMaximo":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 42
    .local v18, "cod":I
    if-gtz p16, :cond_0

    .line 43
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE_CERO:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 46
    :cond_0
    const/16 v2, 0x7d0

    move/from16 v0, p16

    if-ge v0, v2, :cond_1

    .line 47
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE_2000:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 50
    :cond_1
    const/16 v2, 0x23

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    const/16 v2, 0x25

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 51
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p15 .. p15}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getMismoBanco()D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 53
    move/from16 v0, p16

    int-to-double v2, v0

    invoke-virtual/range {p15 .. p15}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getMismoBanco()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "montoTransferir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Limite:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p15 .. p15}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getMismoBanco()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 57
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 60
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p15 .. p15}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getOtrosBancos()D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 62
    move/from16 v0, p16

    int-to-double v2, v0

    invoke-virtual/range {p15 .. p15}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getOtrosBancos()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "montoTransferir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Limite:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p15 .. p15}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getOtrosBancos()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 71
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, p16, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 73
    .local v16, "strMontoTransferir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "desafio":Ljava/lang/String;
    new-instance v19, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v19 .. v19}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 76
    .local v19, "rutClienteAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 78
    new-instance v20, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v20 .. v20}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 79
    .local v20, "rutDestinatarioAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 81
    new-instance v2, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;

    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 87
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

    invoke-direct/range {v2 .. v17}, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;

    .line 89
    return-void
.end method

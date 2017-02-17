.class public Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;
.super Ljava/lang/Object;
.source "Transf_Supergiro_Verificar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field datosOperacion:Lcl/santander/santanderCL/data/DatosSupergiros;

.field input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;

.field resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranf_Supergiro_Verificar(Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;)Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v7, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;-><init>()V

    .line 72
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    const-string v0, "Mvld_WS_Valida_Coordenadas/VerificaSuperGiro"

    .line 74
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 76
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_SUPERGIRO_VERIFICAR()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 78
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "VerificarSuperGiro_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 85
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 87
    :catch_0
    move-exception v4

    .line 89
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 91
    :cond_0
    throw v4

    .line 93
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 95
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 96
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 98
    :cond_1
    throw v5

    .line 101
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 103
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
    .line 113
    new-instance v0, Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;-><init>()V

    .line 115
    .local v0, "req":Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;)V

    .line 116
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->getTranf_Supergiro_Verificar(Lcl/santander/santanderCL/request/Tranf_Supergiro_VerificarRequest;)Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    .line 118
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 121
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->datosOperacion:Lcl/santander/santanderCL/data/DatosSupergiros;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->setDatosSupergiros(Lcl/santander/santanderCL/data/DatosSupergiros;)V

    .line 123
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->resp:Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "nombreUsuario"    # Ljava/lang/String;
    .param p3, "rutOrigen"    # Ljava/lang/String;
    .param p4, "rutDestino"    # Ljava/lang/String;
    .param p5, "monto"    # I
    .param p6, "coordenada1"    # Ljava/lang/String;
    .param p7, "coordenada2"    # Ljava/lang/String;
    .param p8, "coordenada3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v15, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v15}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 40
    .local v15, "rutOrigenVal":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 41
    new-instance v14, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v14}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 42
    .local v14, "rutDestinoVal":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 45
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v13, "desafio":Ljava/lang/StringBuffer;
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, ";"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, ";"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    new-instance v1, Lcl/santander/santanderCL/data/DatosSupergiros;

    invoke-direct {v1}, Lcl/santander/santanderCL/data/DatosSupergiros;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->datosOperacion:Lcl/santander/santanderCL/data/DatosSupergiros;

    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->datosOperacion:Lcl/santander/santanderCL/data/DatosSupergiros;

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getSegmento()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/Utils;->getProductoCuentaCliente(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcl/santander/santanderCL/utils/Constant;->BANCO:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v12}, Lcl/santander/santanderCL/data/DatosSupergiros;->initSupergiros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getSegmento()Ljava/lang/String;

    move-result-object v4

    .line 61
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->datosOperacion:Lcl/santander/santanderCL/data/DatosSupergiros;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/DatosSupergiros;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 62
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->input:Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;

    .line 65
    return-void
.end method

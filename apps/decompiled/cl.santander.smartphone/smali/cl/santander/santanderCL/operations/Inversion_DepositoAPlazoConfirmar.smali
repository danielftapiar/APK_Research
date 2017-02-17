.class public Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;
.super Ljava/lang/Object;
.source "Inversion_DepositoAPlazoConfirmar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;

.field resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInversion_DepositoAPlazoConfirmar(Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v6, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;-><init>()V

    .line 53
    .local v6, "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    const-string v0, "Mvld_Deposito_a_Plazo_Confirmar_Inversion/Deposito_a_Plazo_Confirmar_Inversion"

    .line 54
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    .line 55
    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    .line 54
    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 56
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    .line 57
    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getINVERSIONES_DEPOSITOAPLAZO_CONFIRMAR()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 59
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "Mvld_Deposito_a_Plazo_Confirmar_Inversion_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 65
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    return-object v6

    .line 67
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 69
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 71
    :cond_0
    throw v4

    .line 73
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 75
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
    .line 85
    new-instance v0, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;-><init>()V

    .line 86
    .local v0, "req":Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;->setInput(Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;)V

    .line 87
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->getInversion_DepositoAPlazoConfirmar(Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoConfirmarRequest;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    .line 89
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 95
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "datos"    # Lcl/santander/santanderCL/data/DatosSimularDeposito;
    .param p3, "itemCaptacion"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p4, "coordenada1"    # Ljava/lang/String;
    .param p5, "coordenada2"    # Ljava/lang/String;
    .param p6, "coordenada3"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v13, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v13}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 34
    .local v13, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v13, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;

    invoke-virtual {v13}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual/range {p3 .. p3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getMontoAInvertir()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 42
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDepositoSeleccionado()Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    move-result-object v6

    .line 43
    invoke-virtual {v6}, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->getSubProducto()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getPlazo()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, "0"

    invoke-static {v7, v8, v9}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CLP"

    .line 44
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getIndicadorInversion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getFechaInversion()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v12}, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;

    .line 45
    return-void
.end method

.class public Lcl/santander/santanderCL/operations/AccionesVentaConfirma;
.super Ljava/lang/Object;
.source "AccionesVentaConfirma.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

.field resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccionesVentaConfirma(Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;)Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v6, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;-><init>()V

    .line 69
    .local v6, "resp":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    const-string v0, "Mvld_SP_Graba_Orden/ConfirmaVentaAcciones"

    .line 70
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 71
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getACCIONES_CONFIRMA()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 73
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "ConfirmaVentasAcciones_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 79
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    return-object v6

    .line 81
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 83
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 85
    :cond_0
    throw v4

    .line 87
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 89
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
    .line 99
    new-instance v0, Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;-><init>()V

    .line 100
    .local v0, "req":Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;->setInput(Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;)V

    .line 101
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->getAccionesVentaConfirma(Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;)Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    .line 103
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 108
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->resp:Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "coordenada1"    # Ljava/lang/String;
    .param p3, "coordenada2"    # Ljava/lang/String;
    .param p4, "coordenada3"    # Ljava/lang/String;
    .param p5, "cuentaCustodia"    # Ljava/lang/String;
    .param p6, "nemotecnico"    # Ljava/lang/String;
    .param p7, "cantidad"    # Ljava/lang/String;
    .param p8, "precio"    # Ljava/lang/String;
    .param p9, "monto"    # Ljava/lang/String;
    .param p10, "tipoprecio"    # Ljava/lang/String;
    .param p11, "diasVigencia"    # Ljava/lang/String;
    .param p12, "rutcliente"    # Ljava/lang/String;
    .param p13, "numcelular"    # Ljava/lang/String;
    .param p14, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v19, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v19 .. v19}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 34
    .local v19, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v19

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, "matrizdesafio":Ljava/lang/String;
    const-string v2, "."

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 40
    .local v17, "index":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_0

    .line 41
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, v17

    add-int/lit8 v17, v2, -0x1

    .line 42
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1

    .line 43
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v2, v17

    const-string v3, "0"

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorDcha(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 52
    :cond_0
    :goto_0
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 53
    .local v18, "montoAux":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    .line 58
    new-instance v2, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getOficinaContrato()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v10

    .line 59
    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 60
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p10

    move-object/from16 v11, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v2 .. v16}, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    .line 63
    return-void

    .line 46
    .end local v18    # "montoAux":I
    :cond_1
    const/4 v2, 0x2

    move/from16 v0, v17

    if-le v0, v2, :cond_0

    .line 47
    const/4 v2, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v17, -0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p8

    goto :goto_0
.end method

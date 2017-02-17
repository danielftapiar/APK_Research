.class public Lcl/santander/santanderCL/operations/Transf_MisProductos;
.super Ljava/lang/Object;
.source "Transf_MisProductos.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;

.field resp:Lcl/santander/santanderCL/response/Transf_MisProductosResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransf_MisProductos(Lcl/santander/santanderCL/request/Transf_MisProductosRequest;)Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/Transf_MisProductosRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v7, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;-><init>()V

    .line 55
    .local v7, "resp":Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    const-string v0, "Mvld_Trans_Entre_MisProductos/TransEntreMisProductos"

    .line 57
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 59
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getTRANSFERENCIA_MIS_PRODUCTOS()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 61
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "TransEntreMisProductosRequest"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 68
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 70
    :catch_0
    move-exception v4

    .line 72
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 74
    :cond_0
    throw v4

    .line 76
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 78
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 79
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 81
    :cond_1
    throw v5

    .line 84
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 86
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
    .line 97
    new-instance v0, Lcl/santander/santanderCL/request/Transf_MisProductosRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Transf_MisProductosRequest;-><init>()V

    .line 99
    .local v0, "req":Lcl/santander/santanderCL/request/Transf_MisProductosRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->input:Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Transf_MisProductosRequest;->setInput(Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;)V

    .line 100
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Transf_MisProductos;->getTransf_MisProductos(Lcl/santander/santanderCL/request/Transf_MisProductosRequest;)Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->resp:Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    .line 102
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->resp:Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->resp:Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->resp:Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 105
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->resp:Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemProducto;ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "origen"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "destino"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p3, "monto"    # I
    .param p4, "rutCliente"    # Ljava/lang/String;
    .param p5, "pin"    # Ljava/lang/String;
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
    .local v13, "rut":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 35
    if-gtz p3, :cond_0

    .line 36
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_ENTRE_MIS_PRODUCTOS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v12

    .line 40
    .local v12, "montoSaldo":Ljava/lang/String;
    move/from16 v0, p3

    int-to-double v1, v0

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 41
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_ENTRE_MIS_PRODUCTOS_SALDO:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 45
    :cond_1
    new-instance v1, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v11}, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Transf_MisProductos;->input:Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;

    .line 46
    return-void
.end method

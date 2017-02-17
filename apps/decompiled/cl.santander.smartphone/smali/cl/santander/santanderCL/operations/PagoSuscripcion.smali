.class public Lcl/santander/santanderCL/operations/PagoSuscripcion;
.super Ljava/lang/Object;
.source "PagoSuscripcion.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field descripcion:Ljava/lang/String;

.field input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

.field montoTotal:Ljava/lang/String;

.field nrfolio:Ljava/lang/String;

.field resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPagoSuscripcion(Lcl/santander/santanderCL/request/PagoSuscripcionRequest;)Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/PagoSuscripcionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v7, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;-><init>()V

    .line 66
    .local v7, "resp":Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    const-string v0, "Mvld_Valida_Coordenadas_PagoDeuda/ValidaTarjetaCoordenadasPagoDeuda"

    .line 68
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 69
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getPAGOSUSCRIPCION()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 71
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "ValidaTarjetaCoordenadasPagoDeudaRequest"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 78
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 80
    :catch_0
    move-exception v4

    .line 82
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 84
    :cond_0
    throw v4

    .line 86
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 88
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 89
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 91
    :cond_1
    throw v5

    .line 94
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 96
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
    .line 104
    new-instance v0, Lcl/santander/santanderCL/request/PagoSuscripcionRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/PagoSuscripcionRequest;-><init>()V

    .line 105
    .local v0, "req":Lcl/santander/santanderCL/request/PagoSuscripcionRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/PagoSuscripcionRequest;->setInput(Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;)V

    .line 106
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/PagoSuscripcion;->getPagoSuscripcion(Lcl/santander/santanderCL/request/PagoSuscripcionRequest;)Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    .line 108
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->getNomClie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setNombreCliente(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->getDatid1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setDatid01(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->getMail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setMail(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->descripcion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setDescripcion(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->montoTotal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setMonto(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->nrfolio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setNrFolio(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->getCttcgo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->setCttcgo(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->resp:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "suscripcion"    # Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    .param p2, "detalle"    # Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .param p3, "rut"    # Ljava/lang/String;
    .param p4, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p5, "coordenada1"    # Ljava/lang/String;
    .param p6, "coordenada2"    # Ljava/lang/String;
    .param p7, "coordenada3"    # Ljava/lang/String;
    .param p8, "NombreCliente"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v20, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v20 .. v20}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 36
    .local v20, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getDescripcion()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->descripcion:Ljava/lang/String;

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getNroFolio()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->nrfolio:Ljava/lang/String;

    .line 41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->nrfolio:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMonto()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_DETALLE_DEUDA:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 45
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getFechaVencimiento()Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "fech":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMontoScreen()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->montoTotal:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMonto()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "monto":Ljava/lang/String;
    new-instance v2, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getSegmento()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual/range {p4 .. p4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getOficinaContrato()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual/range {p4 .. p4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getCodEFT()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getIdDocumento()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getTipoDocumento()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getNumCVN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getGlosaCorta()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getDatID1()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getMail()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v14

    invoke-virtual {v14}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, p8

    invoke-direct/range {v2 .. v19}, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/santanderCL/operations/PagoSuscripcion;->input:Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;

    .line 59
    return-void
.end method

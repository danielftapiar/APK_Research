.class public Lcl/santander/santanderCL/operations/PagoRecarga;
.super Ljava/lang/Object;
.source "PagoRecarga.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputPagoRecarga;

.field resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPagoRecarga(Lcl/santander/santanderCL/request/PagoRecargaRequest;)Lcl/santander/santanderCL/response/PagoRecargaResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/PagoRecargaRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v7, Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/PagoRecargaResponse;-><init>()V

    .line 67
    .local v7, "resp":Lcl/santander/santanderCL/response/PagoRecargaResponse;
    const-string v0, "Mvld_Pago_Recarga_Celular/Pago_Recarga_Celular"

    .line 69
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 71
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getPAGORECARGA()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 73
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 74
    sget-object v9, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_11:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setVersionSOAP(Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;)V

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Pago_Recarga_Celular_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 81
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 83
    :catch_0
    move-exception v4

    .line 85
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 87
    :cond_0
    throw v4

    .line 89
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 91
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 92
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 94
    :cond_1
    throw v5

    .line 97
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 99
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
    new-instance v0, Lcl/santander/santanderCL/request/PagoRecargaRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/PagoRecargaRequest;-><init>()V

    .line 109
    .local v0, "req":Lcl/santander/santanderCL/request/PagoRecargaRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->input:Lcl/santander/santanderCL/data/request/InputPagoRecarga;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/PagoRecargaRequest;->setInput(Lcl/santander/santanderCL/data/request/InputPagoRecarga;)V

    .line 110
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/PagoRecarga;->getPagoRecarga(Lcl/santander/santanderCL/request/PagoRecargaRequest;)Lcl/santander/santanderCL/response/PagoRecargaResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    .line 112
    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 116
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/PagoRecargaResponse;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->resp:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemOperadora;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "operadora"    # Lcl/santander/santanderCL/data/response/ItemOperadora;
    .param p3, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p4, "numeroTelefono"    # Ljava/lang/String;
    .param p5, "mail"    # Ljava/lang/String;
    .param p6, "monto"    # I
    .param p7, "coordenada1"    # Ljava/lang/String;
    .param p8, "coordenada2"    # Ljava/lang/String;
    .param p9, "coordenada3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v12, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v12}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 37
    .local v12, "alf":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v12, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "m":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "idCliente":Ljava/lang/String;
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Movistar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const/16 v1, 0x3e8

    move/from16 v0, p6

    if-lt v0, v1, :cond_0

    const/16 v1, 0x4e20

    move/from16 v0, p6

    if-le v0, v1, :cond_3

    .line 49
    :cond_0
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_RECARGA_CELULARES_MOVISTAR:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Movistar (Banda Ancha)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    const/16 v1, 0x5dc

    move/from16 v0, p6

    if-lt v0, v1, :cond_2

    const/16 v1, 0x4e20

    move/from16 v0, p6

    if-le v0, v1, :cond_3

    .line 54
    :cond_2
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_RECARGA_CELULARES_MOVISTAR_BANDA_ANCHA:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 58
    :cond_3
    new-instance v1, Lcl/santander/santanderCL/data/request/InputPagoRecarga;

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getIdConvenio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNroConvenio()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p7

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lcl/santander/santanderCL/data/request/InputPagoRecarga;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/PagoRecarga;->input:Lcl/santander/santanderCL/data/request/InputPagoRecarga;

    .line 61
    return-void
.end method

.class public Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;
.super Ljava/lang/Object;
.source "CreditosConsumoSolicitud.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;

.field resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 101
    new-instance v0, Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;-><init>()V

    .line 102
    .local v0, "req":Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->input:Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;->setInput(Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;)V

    .line 103
    invoke-virtual {p0, v0}, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->getCreditosConsumoSolicitud(Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;)Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    .line 104
    iget-object v1, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 110
    :cond_0
    return-void
.end method

.method public getCreditosConsumoSolicitud(Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;)Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/CreditosConsumoSolicitudRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v7, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;-><init>()V

    .line 60
    .local v7, "resp":Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    const-string v0, "Mvld_LC_Sol_Cred_Consumo_Movil/SolicitaCreditoConsumoMovil"

    .line 62
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    .line 62
    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 64
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getCREDITOSCONSUMOSOLICITUD()Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 67
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Mvld_LC_Sol_Cred_Consumo_Movil_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 74
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 76
    :catch_0
    move-exception v4

    .line 78
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 80
    :cond_0
    throw v4

    .line 82
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 84
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 85
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 87
    :cond_1
    throw v5

    .line 90
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method

.method public getResult()Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->resp:Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "datosCliente"    # Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;
    .param p2, "nomCliente"    # Ljava/lang/String;
    .param p3, "rut"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "numCelular"    # Ljava/lang/String;
    .param p6, "montoSolicitado"    # Ljava/lang/String;
    .param p7, "plazo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v8, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v8}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 36
    .local v8, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v8, p3}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 39
    const-string v0, "."

    const-string v2, ""

    invoke-virtual {p6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 41
    .local v7, "monto":I
    const v0, 0x3b9ac9ff

    if-le v7, v0, :cond_0

    .line 42
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_CREDITO_CONSUMO_SUP:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 44
    :cond_0
    const/16 v0, 0x1388

    if-ge v7, v0, :cond_1

    .line 45
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "16"

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->ERROR_CREDITO_CONSUMO_INF:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getApellidoPaterno()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getApellidoMaterno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getNombrePersona()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "nombre":Ljava/lang/String;
    new-instance v0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;

    .line 50
    invoke-virtual {v8}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object v0, p0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->input:Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;

    .line 52
    return-void
.end method

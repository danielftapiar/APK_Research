.class public Lcl/santander/santanderCL/operations/AccionesCompraValida;
.super Ljava/lang/Object;
.source "AccionesCompraValida.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;

.field resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccionesCompraValida(Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;)Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v6, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;-><init>()V

    .line 128
    .local v6, "resp":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    const-string v0, "Mvld_SP_Graba_Orden_Compra/ValidaCompraAcciones"

    .line 131
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    .line 132
    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    .line 131
    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 133
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getACCIONES_COMPRA_VALIDA()Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 136
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "ValidaCompraAcciones_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 142
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    return-object v6

    .line 144
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 146
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 148
    :cond_0
    throw v4

    .line 150
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 152
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
    .line 162
    new-instance v0, Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;-><init>()V

    .line 163
    .local v0, "req":Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;->setInput(Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;)V

    .line 164
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/AccionesCompraValida;->getAccionesCompraValida(Lcl/santander/santanderCL/request/AccionesCompraValidaRequest;)Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    .line 166
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 172
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->resp:Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "cuentaCustodia"    # Ljava/lang/String;
    .param p2, "nemoTecnico"    # Ljava/lang/String;
    .param p3, "cantidad"    # Ljava/lang/String;
    .param p4, "precio"    # Ljava/lang/String;
    .param p5, "monto"    # Ljava/lang/String;
    .param p6, "comisionMonto"    # Ljava/lang/String;
    .param p7, "precioActual"    # Ljava/lang/String;
    .param p8, "tipoPrecio"    # Ljava/lang/String;
    .param p9, "cuenta"    # Ljava/lang/String;
    .param p10, "diasVigencia"    # Ljava/lang/String;
    .param p11, "rut"    # Ljava/lang/String;
    .param p12, "coordenada1"    # Ljava/lang/String;
    .param p13, "coordenada2"    # Ljava/lang/String;
    .param p14, "coordenada3"    # Ljava/lang/String;
    .param p15, "numeroCelular"    # Ljava/lang/String;
    .param p16, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v25, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct/range {v25 .. v25}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 35
    .local v25, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    move-object/from16 v0, v25

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 51
    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 52
    .local v23, "precioAux":D
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    .line 59
    .local v19, "montoAux":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "matrizDesafio":Ljava/lang/String;
    new-instance v21, Ljava/text/DecimalFormat;

    const-string v3, "##0"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 64
    .local v21, "numberFormat":Ljava/text/DecimalFormat;
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "montoInput":Ljava/lang/String;
    const/16 v22, 0x0

    .line 80
    .local v22, "numeroDecimales":I
    const-string v3, "."

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 82
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int v22, v3, v4

    .line 87
    :goto_0
    const/4 v3, 0x2

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p4

    .line 89
    const-string v3, "."

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 90
    const-string v3, ","

    const-string v4, "."

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 94
    const-string v3, "."

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 96
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int v22, v3, v4

    .line 101
    :goto_1
    const/4 v3, 0x2

    move-object/from16 v0, p7

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p7

    .line 102
    const-string v3, ","

    const-string v4, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    .line 108
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p6 .. p6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p6

    .line 113
    :goto_2
    new-instance v3, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;

    .line 116
    invoke-virtual/range {v25 .. v25}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 117
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v3 .. v18}, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iput-object v3, v0, Lcl/santander/santanderCL/operations/AccionesCompraValida;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;

    .line 119
    return-void

    .line 84
    :cond_0
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 98
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v3

    goto :goto_2
.end method

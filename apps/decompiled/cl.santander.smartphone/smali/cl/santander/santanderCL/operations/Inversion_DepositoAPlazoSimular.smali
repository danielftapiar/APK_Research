.class public Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;
.super Ljava/lang/Object;
.source "Inversion_DepositoAPlazoSimular.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field ajustes:Ljava/lang/String;

.field indexCodigoDeposito:I

.field input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;

.field monto:Ljava/lang/Integer;

.field plazo:Ljava/lang/Integer;

.field resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

.field rutAux:Lcl/santander/santanderCL/data/AlfaNumerico11;

.field tipoAjuste:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

.field tipoDeposito:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->indexCodigoDeposito:I

    .line 26
    return-void
.end method

.method private getInversion_DepositoAPlazoSimular(Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;Ljava/lang/String;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;
    .param p2, "divisa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v6, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;-><init>()V

    .line 115
    .local v6, "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    const-string v0, "Mvld_Deposito_a_Plazo_Simular/Deposito_a_Plazo_Simular"

    .line 116
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    .line 117
    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    .line 116
    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 118
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getINVERSIONES_DEPOSITOAPLAZO_SIMULAR()Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 121
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "Mvld_Deposito_a_Plazo_Simular_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 128
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7, p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    return-object v6

    .line 130
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 132
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 134
    :cond_0
    throw v4

    .line 136
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method


# virtual methods
.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, "item":Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDepositoPlazoIniciar()Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    new-instance v7, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;

    invoke-direct {v7}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;-><init>()V

    .line 151
    .local v7, "iniciar":Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->rutAux:Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;->init(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;->execute()V

    .line 155
    invoke-virtual {v7}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;->getResult()Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;

    move-result-object v10

    .line 157
    .local v10, "respIniciar":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    .line 158
    invoke-virtual {v10}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->getInversiones()Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDepositoPlazoIniciar(Lcl/santander/santanderCL/data/MatrizConsultaInversiones;)V

    .line 160
    invoke-virtual {v10}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->getInversiones()Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    move-result-object v0

    iget v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->indexCodigoDeposito:I

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->get(I)Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    move-result-object v8

    .line 167
    .end local v7    # "iniciar":Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoIniciar;
    .end local v10    # "respIniciar":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;
    :goto_0
    new-instance v0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->rutAux:Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v8}, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->getSubProducto()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->plazo:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->monto:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v8}, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->getDivisa()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;

    .line 173
    new-instance v9, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;

    invoke-direct {v9}, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;-><init>()V

    .line 174
    .local v9, "req":Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;

    invoke-virtual {v9, v0}, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;->setInput(Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;)V

    .line 175
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->tipoAjuste:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;->UDF:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    if-ne v0, v1, :cond_1

    .line 176
    const-string v0, "UF"

    invoke-direct {p0, v9, v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->getInversion_DepositoAPlazoSimular(Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;Ljava/lang/String;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    .line 179
    :goto_1
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getDatos()Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->ajustes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setTipoAjustes(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getDatos()Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->monto:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setMontoAInvertir(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getDatos()Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->setDeposito(Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;)V

    .line 184
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 163
    .end local v9    # "req":Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;
    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDepositoPlazoIniciar()Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    move-result-object v0

    iget v1, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->indexCodigoDeposito:I

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->get(I)Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    move-result-object v8

    goto/16 :goto_0

    .line 178
    .restart local v9    # "req":Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;
    :cond_1
    invoke-virtual {v8}, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->getDivisa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->getInversion_DepositoAPlazoSimular(Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoSimularRequest;Ljava/lang/String;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    goto/16 :goto_1

    .line 190
    :cond_2
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->resp:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "tipoDeposito"    # Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;
    .param p3, "tipoAjuste"    # Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;
    .param p4, "monto"    # Ljava/lang/Integer;
    .param p5, "plazo"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x1388

    const/16 v2, 0x16d

    .line 46
    new-instance v0, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->rutAux:Lcl/santander/santanderCL/data/AlfaNumerico11;

    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->rutAux:Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->tipoDeposito:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    .line 50
    iput-object p3, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->tipoAjuste:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    .line 51
    iput-object p4, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->monto:Ljava/lang/Integer;

    .line 52
    iput-object p5, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->plazo:Ljava/lang/Integer;

    .line 54
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->FIJO:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    if-ne p2, v0, :cond_5

    .line 56
    const-string v0, "Pesos"

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->ajustes:Ljava/lang/String;

    .line 58
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;->PESOS:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    if-ne p3, v0, :cond_2

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->indexCodigoDeposito:I

    .line 62
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 63
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 64
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_PESOS_MONTO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 67
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_9

    .line 68
    :cond_1
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 69
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_PESOS_PLAZO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 73
    :cond_2
    const-string v0, "UF"

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->ajustes:Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->indexCodigoDeposito:I

    .line 75
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 76
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 77
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_UDF_MONTO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 80
    :cond_3
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_4

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_9

    .line 81
    :cond_4
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 82
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_UDF_PLAZO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 86
    :cond_5
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->RENOVABLE:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    if-ne p2, v0, :cond_8

    .line 87
    const-string v0, "PESOS"

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->ajustes:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->indexCodigoDeposito:I

    .line 89
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 90
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 91
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_RENOVABLE_PESOS_MONTO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 94
    :cond_6
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_9

    .line 95
    :cond_7
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 96
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_RENOVABLE_PESOS_PLAZO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 100
    :cond_8
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    .line 101
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_SELECCION_TIPODEPOSITO:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 107
    :cond_9
    return-void
.end method

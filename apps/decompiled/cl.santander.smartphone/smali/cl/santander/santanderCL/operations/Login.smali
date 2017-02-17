.class public Lcl/santander/santanderCL/operations/Login;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO:[I


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputLoginRequest;

.field resp:Lcl/santander/santanderCL/response/LoginResponse;


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcl/santander/santanderCL/operations/Login;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->values()[Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->HOMOLOGACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->INTEGRACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/santander/santanderCL/operations/Login;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLogin(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;
    .locals 2
    .param p1, "req"    # Lcl/santander/santanderCL/request/LoginRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcl/santander/santanderCL/operations/Login;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO()[I

    move-result-object v0

    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 182
    :pswitch_0
    invoke-direct {p0, p1}, Lcl/santander/santanderCL/operations/Login;->getLogin_INTEGRACION(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-direct {p0, p1}, Lcl/santander/santanderCL/operations/Login;->getLogin_POST(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-direct {p0, p1}, Lcl/santander/santanderCL/operations/Login;->getLogin_POST(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLogin_GET(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/LoginRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v6, Lcl/santander/santanderCL/response/LoginResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/LoginResponse;-><init>()V

    .line 135
    .local v6, "resp":Lcl/santander/santanderCL/response/LoginResponse;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    .line 136
    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    .line 135
    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v4

    .line 138
    .local v4, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "?canal="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 139
    invoke-virtual {p1}, Lcl/santander/santanderCL/request/LoginRequest;->getInput()Lcl/santander/santanderCL/data/request/InputLoginRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->getRut()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pwd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcl/santander/santanderCL/request/LoginRequest;->getInput()Lcl/santander/santanderCL/data/request/InputLoginRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->getPin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 138
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "aux":Ljava/lang/String;
    new-instance v1, Lcl/santander/santanderCL/ws/CommunicationWS;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcl/santander/santanderCL/operations/IOperations;->getLOGIN()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "con1":Lcl/santander/santanderCL/ws/CommunicationWS;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 143
    invoke-virtual {v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callURLGet()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "respAux":Ljava/lang/String;
    new-instance v5, Lcl/santander/santanderCL/data/response/Info;

    invoke-direct {v5}, Lcl/santander/santanderCL/data/response/Info;-><init>()V

    .line 146
    .local v5, "info":Lcl/santander/santanderCL/data/response/Info;
    if-nez v7, :cond_0

    .line 147
    const-string v8, "160"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/response/LoginResponse;->setInfo(Lcl/santander/santanderCL/data/response/Info;)V

    .line 170
    :goto_0
    return-object v6

    .line 151
    :cond_0
    const-string v8, "MSGUSUARIO="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, "i":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_1

    .line 153
    const-string v8, "16"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v8, v3, 0xb

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v8, v3, 0xb

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/response/LoginResponse;->setInfo(Lcl/santander/santanderCL/data/response/Info;)V

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, ""

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v8, "00"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 164
    const-string v8, "OK"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V

    .line 165
    const-string v8, "OK"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/response/LoginResponse;->setInfo(Lcl/santander/santanderCL/data/response/Info;)V

    goto :goto_0
.end method

.method private getLogin_INTEGRACION(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/LoginRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v7, Lcl/santander/santanderCL/response/LoginResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/LoginResponse;-><init>()V

    .line 50
    .local v7, "resp":Lcl/santander/santanderCL/response/LoginResponse;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    .line 50
    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 53
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    const-string v0, "Mvld_LD_Cruce_Producto/LoginCruce"

    .line 55
    .local v0, "METHOD_NAME":Ljava/lang/String;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    .line 56
    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getLOGIN()Ljava/lang/String;

    move-result-object v10

    .line 55
    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 58
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v6, "namespaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "LoginRequest"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :try_start_0
    invoke-virtual {v2, v1, v6}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 68
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/LoginResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    const-string v10, "INTEGRACION"

    invoke-virtual {v9, v10}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 81
    return-object v7

    .line 70
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 72
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 73
    throw v4

    .line 75
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method

.method private getLogin_POST(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/LoginRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v6, Lcl/santander/santanderCL/response/LoginResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/LoginResponse;-><init>()V

    .line 88
    .local v6, "resp":Lcl/santander/santanderCL/response/LoginResponse;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    .line 89
    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    .line 88
    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v4

    .line 91
    .local v4, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "canal="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 92
    invoke-virtual {p1}, Lcl/santander/santanderCL/request/LoginRequest;->getInput()Lcl/santander/santanderCL/data/request/InputLoginRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->getRut()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pwd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcl/santander/santanderCL/request/LoginRequest;->getInput()Lcl/santander/santanderCL/data/request/InputLoginRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->getPin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "aux":Ljava/lang/String;
    new-instance v1, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v4}, Lcl/santander/santanderCL/operations/IOperations;->getLOGIN()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "con1":Lcl/santander/santanderCL/ws/CommunicationWS;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 96
    const/4 v7, 0x0

    .line 98
    .local v7, "respAux":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->callURLPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    new-instance v5, Lcl/santander/santanderCL/data/response/Info;

    invoke-direct {v5}, Lcl/santander/santanderCL/data/response/Info;-><init>()V

    .line 103
    .local v5, "info":Lcl/santander/santanderCL/data/response/Info;
    if-nez v7, :cond_0

    .line 104
    const-string v8, "16"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 105
    const-string v8, "Sesion Expirada"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/response/LoginResponse;->setInfo(Lcl/santander/santanderCL/data/response/Info;)V

    .line 127
    :goto_0
    return-object v6

    .line 108
    :cond_0
    const-string v8, "MSGUSUARIO="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "i":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_1

    .line 110
    const-string v8, "16"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 112
    add-int/lit8 v8, v3, 0xb

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V

    .line 113
    add-int/lit8 v8, v3, 0xb

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/response/LoginResponse;->setInfo(Lcl/santander/santanderCL/data/response/Info;)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, ""

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v8, "00"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 121
    const-string v8, "OK"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V

    .line 122
    const-string v8, "OK"

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v6, v5}, Lcl/santander/santanderCL/response/LoginResponse;->setInfo(Lcl/santander/santanderCL/data/response/Info;)V

    goto :goto_0
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
    .line 194
    new-instance v0, Lcl/santander/santanderCL/request/LoginRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/LoginRequest;-><init>()V

    .line 195
    .local v0, "req":Lcl/santander/santanderCL/request/LoginRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Login;->input:Lcl/santander/santanderCL/data/request/InputLoginRequest;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/LoginRequest;->setInput(Lcl/santander/santanderCL/data/request/InputLoginRequest;)V

    .line 197
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Login;->getLogin(Lcl/santander/santanderCL/request/LoginRequest;)Lcl/santander/santanderCL/response/LoginResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    .line 198
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/LoginResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/LoginResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/LoginResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/LoginResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/LoginResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/LoginResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 208
    :cond_1
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/LoginResponse;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Login;->resp:Lcl/santander/santanderCL/response/LoginResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 36
    .local v1, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 38
    new-instance v2, Lcl/santander/santanderCL/data/request/InputLoginRequest;

    invoke-direct {v2}, Lcl/santander/santanderCL/data/request/InputLoginRequest;-><init>()V

    iput-object v2, p0, Lcl/santander/santanderCL/operations/Login;->input:Lcl/santander/santanderCL/data/request/InputLoginRequest;

    .line 39
    iget-object v2, p0, Lcl/santander/santanderCL/operations/Login;->input:Lcl/santander/santanderCL/data/request/InputLoginRequest;

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->setIdCanal(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "pinAux":Ljava/lang/String;
    iget-object v2, p0, Lcl/santander/santanderCL/operations/Login;->input:Lcl/santander/santanderCL/data/request/InputLoginRequest;

    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->setPin(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcl/santander/santanderCL/operations/Login;->input:Lcl/santander/santanderCL/data/request/InputLoginRequest;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/request/InputLoginRequest;->setRut(Ljava/lang/String;)V

    .line 43
    return-void
.end method

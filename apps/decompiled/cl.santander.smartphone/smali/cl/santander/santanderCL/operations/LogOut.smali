.class public Lcl/santander/santanderCL/operations/LogOut;
.super Ljava/lang/Object;
.source "LogOut.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v3

    .line 21
    invoke-static {v3}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v1

    .line 25
    .local v1, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v1}, Lcl/santander/santanderCL/operations/IOperations;->getLOGOUT()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 26
    new-instance v0, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v1}, Lcl/santander/santanderCL/operations/IOperations;->getLOGOUT()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "con1":Lcl/santander/santanderCL/ws/CommunicationWS;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 30
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->callURLPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "respAux":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RESPUESTA LOGOUT:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 34
    .end local v0    # "con1":Lcl/santander/santanderCL/ws/CommunicationWS;
    .end local v2    # "respAux":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->clear()V

    .line 36
    return-void
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

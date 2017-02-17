.class public Lcl/santander/santanderCL/response/DepositoPlazoResponse;
.super Ljava/lang/Object;
.source "DepositoPlazoResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field depositos:Lcl/santander/santanderCL/data/MatrizInversiones;

.field info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDepositos()Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->depositos:Lcl/santander/santanderCL/data/MatrizInversiones;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 23
    if-eqz p1, :cond_1

    .line 24
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 30
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 32
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v4, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 36
    :cond_0
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "MATRICES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 38
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v4, "MATRIZDEPOSITO"

    invoke-virtual {v0, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_1

    .line 41
    new-instance v1, Lcl/santander/santanderCL/data/MatrizDepositosPlazo;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    sget-object v4, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct {v1, v2, v4}, Lcl/santander/santanderCL/data/MatrizDepositosPlazo;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 44
    .local v1, "depositosAux":Lcl/santander/santanderCL/data/MatrizDepositosPlazo;
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizDepositosPlazo;->getInversiones()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->depositos:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 45
    iget-object v4, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->depositos:Lcl/santander/santanderCL/data/MatrizInversiones;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 47
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizDepositosPlazo;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    iget-object v4, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    const-string v5, "16"

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_INVERSIONES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    .line 56
    .end local v1    # "depositosAux":Lcl/santander/santanderCL/data/MatrizDepositosPlazo;
    :cond_1
    return-void
.end method

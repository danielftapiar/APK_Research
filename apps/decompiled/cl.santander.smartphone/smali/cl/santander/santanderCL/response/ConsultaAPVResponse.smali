.class public Lcl/santander/santanderCL/response/ConsultaAPVResponse;
.super Ljava/lang/Object;
.source "ConsultaAPVResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAPVs()Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaAPVResponse;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaAPVResponse;->info:Lcl/santander/santanderCL/data/response/Info;

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
    .line 20
    if-eqz p1, :cond_1

    .line 21
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 27
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, "data":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 29
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/ConsultaAPVResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 33
    :cond_0
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "MATRICES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 35
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    const-string v4, "MATRIZSALDOS"

    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    .local v2, "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_1

    .line 38
    new-instance v0, Lcl/santander/santanderCL/data/MatrizAPV;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    sget-object v4, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct {v0, v2, v4}, Lcl/santander/santanderCL/data/MatrizAPV;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 40
    .local v0, "apvAux":Lcl/santander/santanderCL/data/MatrizAPV;
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizAPV;->getInversiones()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/ConsultaAPVResponse;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 41
    iget-object v4, p0, Lcl/santander/santanderCL/response/ConsultaAPVResponse;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 47
    .end local v0    # "apvAux":Lcl/santander/santanderCL/data/MatrizAPV;
    :cond_1
    return-void
.end method

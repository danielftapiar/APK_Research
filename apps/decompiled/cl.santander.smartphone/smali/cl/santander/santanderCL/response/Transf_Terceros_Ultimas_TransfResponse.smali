.class public Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
.super Ljava/lang/Object;
.source "Transf_Terceros_Ultimas_TransfResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field ultTransf:Lcl/santander/santanderCL/data/MatrizUltTransf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getUltTransf()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemUltTransf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;->ultTransf:Lcl/santander/santanderCL/data/MatrizUltTransf;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizUltTransf;->getTransferencias()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_1

    .line 28
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 32
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 34
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 38
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 40
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v3, "MATRIZ-ULTIMOS-DESTINATARIOS"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 44
    new-instance v3, Lcl/santander/santanderCL/data/MatrizUltTransf;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lcl/santander/santanderCL/data/MatrizUltTransf;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;->ultTransf:Lcl/santander/santanderCL/data/MatrizUltTransf;

    .line 53
    :cond_1
    return-void
.end method

.class public Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
.super Ljava/lang/Object;
.source "Transf_Terceros_Valida_RealizarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field numeroTransaccion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getNumeroTransaccion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->numeroTransaccion:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 18
    if-eqz p1, :cond_1

    .line 19
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 23
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 25
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 29
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 31
    const-string v2, "NUMERO-TRANSACCION"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->numeroTransaccion:Ljava/lang/String;

    .line 39
    :cond_1
    return-void
.end method

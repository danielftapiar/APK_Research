.class public Lcl/santander/santanderCL/response/ConsultaChequesResponse;
.super Ljava/lang/Object;
.source "ConsultaChequesResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

.field info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetalleCheque()Lcl/santander/santanderCL/data/response/ItemCheque;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

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
    .line 20
    if-eqz p1, :cond_1

    .line 21
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 25
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 27
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 32
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 35
    new-instance v2, Lcl/santander/santanderCL/data/response/ItemCheque;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/ItemCheque;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 41
    :cond_1
    return-void
.end method

.class public Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;
.super Ljava/lang/Object;
.source "OfertasImperdiblesResponse.java"


# instance fields
.field imperdibles:Lcl/santander/santanderCL/data/MatrizPOI;

.field info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImperdibles()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->imperdibles:Lcl/santander/santanderCL/data/MatrizPOI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->imperdibles:Lcl/santander/santanderCL/data/MatrizPOI;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizPOI;->getPOIS()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->imperdibles:Lcl/santander/santanderCL/data/MatrizPOI;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizPOI;->getPOIS()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;DD)V
    .locals 10
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 28
    if-eqz p1, :cond_1

    .line 30
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 32
    .local v9, "root":Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 34
    instance-of v1, v9, Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 35
    check-cast v9, Ljava/util/Vector;

    .end local v9    # "root":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 36
    .local v8, "infoSoap":Ljava/lang/Object;
    if-eqz v8, :cond_0

    instance-of v1, v8, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    invoke-direct {v1}, Lcl/santander/santanderCL/data/response/Info;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 41
    iget-object v2, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 42
    const-string v3, "codError"

    move-object v0, v8

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v1, v0

    .line 41
    invoke-static {v3, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 44
    const-string v2, "descError"

    check-cast v8, Lorg/ksoap2/serialization/SoapObject;

    .line 43
    .end local v8    # "infoSoap":Ljava/lang/Object;
    invoke-static {v2, v8}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    const-string v1, "listaImperdibles"

    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 56
    .restart local v9    # "root":Ljava/lang/Object;
    if-eqz v9, :cond_1

    instance-of v1, v9, Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lcl/santander/santanderCL/data/MatrizPOI;

    move-object v2, v9

    check-cast v2, Ljava/util/Vector;

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcl/santander/santanderCL/data/MatrizPOI;-><init>(Ljava/util/Vector;DD)V

    iput-object v1, p0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->imperdibles:Lcl/santander/santanderCL/data/MatrizPOI;

    .line 62
    .end local v9    # "root":Ljava/lang/Object;
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception v7

    .line 47
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

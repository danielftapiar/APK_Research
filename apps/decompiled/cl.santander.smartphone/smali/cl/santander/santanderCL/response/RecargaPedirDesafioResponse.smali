.class public Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
.super Ljava/lang/Object;
.source "RecargaPedirDesafioResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field numeroTarjeta:Ljava/lang/String;

.field segmento:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getNumeroTarjeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->numeroTarjeta:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->segmento:Ljava/lang/String;

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
    .line 25
    if-eqz p1, :cond_1

    .line 26
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 30
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 32
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v4, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 37
    :cond_0
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "ESCALARES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 41
    const-string v5, "NUMEROTARJETA"

    move-object v4, v0

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->numeroTarjeta:Ljava/lang/String;

    .line 42
    const-string v5, "SEGMENTO"

    move-object v4, v0

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->segmento:Ljava/lang/String;

    .line 44
    const-string v4, "MATRIZDESAFIO"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v4, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "desafio":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "d":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 47
    const/4 v4, 0x0

    aget-object v4, v1, v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->coordenada1:Ljava/lang/String;

    .line 48
    const/4 v4, 0x1

    aget-object v4, v1, v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->coordenada2:Ljava/lang/String;

    .line 49
    const/4 v4, 0x2

    aget-object v4, v1, v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->coordenada3:Ljava/lang/String;

    .line 54
    .end local v1    # "d":[Ljava/lang/String;
    .end local v2    # "desafio":Ljava/lang/String;
    :cond_1
    return-void
.end method

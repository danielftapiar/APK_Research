.class public Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;
.super Ljava/lang/Object;
.source "DetalleSuscripcionResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field private coordenada1:Ljava/lang/String;

.field private coordenada2:Ljava/lang/String;

.field private coordenada3:Ljava/lang/String;

.field detalles:Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field private segmento:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada1:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada2:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada3:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getDetalle()Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->detalles:Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->detalles:Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->detalles:Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;->get(I)Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 8
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p1, :cond_3

    .line 30
    const-string v6, "OUTPUT"

    invoke-virtual {p1, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 31
    .local v5, "root":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 32
    .local v1, "data":Ljava/lang/Object;
    if-eqz v5, :cond_3

    instance-of v6, v5, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_3

    move-object v6, v5

    .line 33
    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    const-string v7, "INFO"

    invoke-virtual {v6, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    new-instance v6, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v6, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v6, v5

    .line 40
    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    const-string v7, "ESCALARES"

    invoke-virtual {v6, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 43
    const-string v7, "MATRIZDESAFIO"

    move-object v6, v1

    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v7, v6}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "Aux":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "des":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 46
    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada1:Ljava/lang/String;

    .line 47
    const/4 v6, 0x1

    aget-object v6, v2, v6

    iput-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada2:Ljava/lang/String;

    .line 48
    const/4 v6, 0x2

    aget-object v6, v2, v6

    iput-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->coordenada3:Ljava/lang/String;

    .line 50
    :cond_1
    const-string v6, "SEGMENTO"

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-static {v6, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->segmento:Ljava/lang/String;

    .line 54
    .end local v0    # "Aux":Ljava/lang/String;
    .end local v2    # "des":[Ljava/lang/String;
    :cond_2
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    .end local v5    # "root":Ljava/lang/Object;
    const-string v6, "MATRICES"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 56
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    const-string v6, "MATRIZINFODEUDA"

    invoke-virtual {v1, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "matrices":Ljava/lang/Object;
    if-eqz v4, :cond_3

    instance-of v6, v4, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_3

    .line 60
    new-instance v6, Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "matrices":Ljava/lang/Object;
    invoke-direct {v6, v4}, Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->detalles:Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

    .line 61
    iget-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->segmento:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 63
    iget-object v6, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->detalles:Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;

    invoke-virtual {v6}, Lcl/santander/santanderCL/data/MatrizDetalleSuscripcion;->getDetalles()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 74
    :cond_3
    return-void

    .line 63
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 64
    .local v3, "it":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    iget-object v7, p0, Lcl/santander/santanderCL/response/DetalleSuscripcionResponse;->segmento:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->setSegmento(Ljava/lang/String;)V

    goto :goto_0
.end method

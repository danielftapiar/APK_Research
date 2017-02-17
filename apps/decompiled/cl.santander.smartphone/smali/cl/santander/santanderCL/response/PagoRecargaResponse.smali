.class public Lcl/santander/santanderCL/response/PagoRecargaResponse;
.super Ljava/lang/Object;
.source "PagoRecargaResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field fecha:Ljava/lang/String;

.field hora:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field numeroTransaccion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFecha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public getHora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->hora:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getNumeroTransaccion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->numeroTransaccion:Ljava/lang/String;

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
    .line 21
    if-eqz p1, :cond_1

    .line 22
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 26
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 28
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 31
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 34
    const-string v3, "CODIGOTRANSACCION"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->numeroTransaccion:Ljava/lang/String;

    .line 36
    const-string v3, "FECHA_TRANSACCION"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->fecha:Ljava/lang/String;

    .line 37
    const-string v2, "HORA_TRANSACCION"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/PagoRecargaResponse;->hora:Ljava/lang/String;

    .line 43
    :cond_1
    return-void
.end method

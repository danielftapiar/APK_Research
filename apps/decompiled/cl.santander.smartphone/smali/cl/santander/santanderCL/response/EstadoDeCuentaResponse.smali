.class public Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
.super Ljava/lang/Object;
.source "EstadoDeCuentaResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field imagen:[B

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
.method public getImagen()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->imagen:[B

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

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
    .line 22
    if-eqz p1, :cond_1

    .line 23
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 27
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "info"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 33
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "codErr"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v4, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "desErr"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 34
    iget-object v2, p0, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    const-string v3, "msgUsuario"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    .line 39
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "escalares"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 43
    const-string v2, "imgNbs64"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/Utils;->translateStringtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->imagen:[B

    .line 46
    :cond_1
    return-void
.end method

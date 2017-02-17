.class public Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
.super Ljava/lang/Object;
.source "Transf_Terceros_VerificaResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field email:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field msgid:Ljava/lang/String;

.field nombreCliente:Ljava/lang/String;

.field nombreDestinatario:Ljava/lang/String;

.field numeroTarjeta:Ljava/lang/String;

.field productoDestinatario:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->nombreCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->nombreDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTarjeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->numeroTarjeta:Ljava/lang/String;

    return-object v0
.end method

.method public getProductoDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->productoDestinatario:Ljava/lang/String;

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
    .line 27
    if-eqz p1, :cond_2

    .line 28
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "root":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 30
    .local v1, "data":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v4, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 31
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 38
    :cond_0
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "ESCALARES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 41
    const-string v5, "MATRIZDESAFIO"

    move-object v4, v1

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "Aux":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "des":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 44
    const/4 v4, 0x0

    aget-object v4, v2, v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->coordenada1:Ljava/lang/String;

    .line 45
    const/4 v4, 0x1

    aget-object v4, v2, v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->coordenada2:Ljava/lang/String;

    .line 46
    const/4 v4, 0x2

    aget-object v4, v2, v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->coordenada3:Ljava/lang/String;

    .line 50
    :cond_1
    const-string v5, "NOMBRE-CLIENTE"

    move-object v4, v1

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->nombreCliente:Ljava/lang/String;

    .line 51
    const-string v5, "NOMBRE-DESTINATARIO-MB"

    move-object v4, v1

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->nombreDestinatario:Ljava/lang/String;

    .line 52
    const-string v5, "PRODUCTO-CUENTA-DESTINATARIO"

    move-object v4, v1

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->productoDestinatario:Ljava/lang/String;

    .line 53
    const-string v5, "E-MAIL"

    move-object v4, v1

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->email:Ljava/lang/String;

    .line 54
    const-string v5, "NUMEROTARJETA"

    move-object v4, v1

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->numeroTarjeta:Ljava/lang/String;

    .line 55
    const-string v4, "MSGID"

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-static {v4, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->msgid:Ljava/lang/String;

    .line 61
    .end local v0    # "Aux":Ljava/lang/String;
    .end local v2    # "des":[Ljava/lang/String;
    :cond_2
    return-void
.end method

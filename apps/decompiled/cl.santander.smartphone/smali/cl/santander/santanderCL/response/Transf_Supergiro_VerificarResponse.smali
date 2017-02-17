.class public Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
.super Ljava/lang/Object;
.source "Transf_Supergiro_VerificarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field cod:Ljava/lang/String;

.field datosSupergiros:Lcl/santander/santanderCL/data/DatosSupergiros;

.field idtrx:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field mail:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numeroTelefono:Ljava/lang/String;

.field resultado:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatosSupergiros()Lcl/santander/santanderCL/data/DatosSupergiros;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->datosSupergiros:Lcl/santander/santanderCL/data/DatosSupergiros;

    return-object v0
.end method

.method public getIdtrx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->idtrx:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTelefono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->numeroTelefono:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTelefonoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->numeroTelefono:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->enmascararTelefono(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->resultado:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoNotificacion()Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    .line 94
    .local v0, "resp":Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->cod:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->cod:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->SMS:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->cod:Ljava/lang/String;

    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->EMAIL:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    goto :goto_0
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
    .line 27
    if-eqz p1, :cond_1

    .line 28
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 32
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 34
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 39
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 42
    const-string v3, "RESULTADO"

    move-object v2, v0

    .line 43
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .line 42
    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->resultado:Ljava/lang/String;

    .line 44
    const-string v3, "NUMCEL"

    move-object v2, v0

    .line 45
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .line 44
    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->numeroTelefono:Ljava/lang/String;

    .line 46
    const-string v3, "EMAIL"

    move-object v2, v0

    .line 47
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .line 46
    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->mail:Ljava/lang/String;

    .line 48
    const-string v3, "MSGID"

    move-object v2, v0

    .line 49
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .line 48
    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->msgid:Ljava/lang/String;

    .line 51
    const-string v3, "IDTRX"

    move-object v2, v0

    .line 52
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .line 51
    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->idtrx:Ljava/lang/String;

    .line 54
    const-string v2, "COD"

    .line 55
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 54
    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->cod:Ljava/lang/String;

    .line 58
    :cond_1
    return-void
.end method

.method public setDatosSupergiros(Lcl/santander/santanderCL/data/DatosSupergiros;)V
    .locals 0
    .param p1, "datosSupergiros"    # Lcl/santander/santanderCL/data/DatosSupergiros;

    .prologue
    .line 87
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->datosSupergiros:Lcl/santander/santanderCL/data/DatosSupergiros;

    .line 88
    return-void
.end method

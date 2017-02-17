.class public Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;
.super Ljava/lang/Object;
.source "EscalaresCruceProductoOnline.java"


# instance fields
.field apellidoMaterno:Ljava/lang/String;

.field apellidoPaterno:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nombreFantasia:Ljava/lang/String;

.field nombrePersona:Ljava/lang/String;

.field numeroDocumento:Ljava/lang/String;

.field numeroPersona:Ljava/lang/String;

.field perfil:Lcl/santander/santanderCL/utils/Constant$PERFIL;

.field segmento:Ljava/lang/String;

.field tipoDocumento:Ljava/lang/String;

.field tipoPersona:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string v2, "NUMEROPERSONA"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->numeroPersona:Ljava/lang/String;

    .line 35
    const-string v2, "TIPODOCUMENTO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->tipoDocumento:Ljava/lang/String;

    .line 36
    const-string v2, "NUMERODOCUMENTO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    .line 37
    const-string v2, "TIPOPERSONA"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->tipoPersona:Ljava/lang/String;

    .line 38
    const-string v2, "APELLIDOPATERNO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->apellidoPaterno:Ljava/lang/String;

    .line 39
    const-string v2, "APELLIDOMATERNO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->apellidoMaterno:Ljava/lang/String;

    .line 40
    const-string v2, "NOMBREPERSONA"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->nombrePersona:Ljava/lang/String;

    .line 41
    const-string v2, "NOMBREFANTASIA"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->nombreFantasia:Ljava/lang/String;

    .line 42
    const-string v2, "MSGID"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->msgid:Ljava/lang/String;

    .line 43
    const-string v2, "SEGMENTO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->segmento:Ljava/lang/String;

    .line 46
    :try_start_0
    const-string v2, "PERFIL"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "iPerfil":I
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PERFIL;->values()[Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->perfil:Lcl/santander/santanderCL/utils/Constant$PERFIL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "iPerfil":I
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VALOR PERFIL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "PERFIL"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 52
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$PERFIL;->PERFIL1:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->perfil:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    goto :goto_0
.end method


# virtual methods
.method public getApellidoMaterno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->apellidoMaterno:Ljava/lang/String;

    return-object v0
.end method

.method public getApellidoPaterno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->apellidoPaterno:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreFantasia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->nombreFantasia:Ljava/lang/String;

    return-object v0
.end method

.method public getNombrePersona()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->nombrePersona:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroPersona()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->numeroPersona:Ljava/lang/String;

    return-object v0
.end method

.method public getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->perfil:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->tipoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoPersona()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->tipoPersona:Ljava/lang/String;

    return-object v0
.end method

.method public setApellidoMaterno(Ljava/lang/String;)V
    .locals 0
    .param p1, "apellidoMaterno"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->apellidoMaterno:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setApellidoPaterno(Ljava/lang/String;)V
    .locals 0
    .param p1, "apellidoPaterno"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->apellidoPaterno:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->msgid:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setNombreFantasia(Ljava/lang/String;)V
    .locals 0
    .param p1, "nombreFantasia"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->nombreFantasia:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setNombrePersona(Ljava/lang/String;)V
    .locals 0
    .param p1, "nombrePersona"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->nombrePersona:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNumeroDocumento(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroDocumento"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNumeroPersona(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroPersona"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->numeroPersona:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPerfil(Lcl/santander/santanderCL/utils/Constant$PERFIL;)V
    .locals 0
    .param p1, "perfil"    # Lcl/santander/santanderCL/utils/Constant$PERFIL;

    .prologue
    .line 66
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->perfil:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    .line 67
    return-void
.end method

.method public setTipoDocumento(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoDocumento"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->tipoDocumento:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTipoPersona(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoPersona"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->tipoPersona:Ljava/lang/String;

    .line 95
    return-void
.end method

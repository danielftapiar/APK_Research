.class public Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
.super Ljava/lang/Object;
.source "Transf_Terceros_Valida_SuperClaveResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field msgid:Ljava/lang/String;

.field numeroTelefono:Ljava/lang/String;

.field numeroTransacion:Ljava/lang/String;

.field otpCodotp:Ljava/lang/String;

.field otpIdtrx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTelefono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTelefono:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroTelefonoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTelefono:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->enmascararTelefono(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeroTransacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTransacion:Ljava/lang/String;

    return-object v0
.end method

.method public getOtpCodotp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpCodotp:Ljava/lang/String;

    return-object v0
.end method

.method public getOtpIdtrx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpIdtrx:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoNotificacion()Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    .line 86
    .local v0, "resp":Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpCodotp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpCodotp:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->SMS:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpCodotp:Ljava/lang/String;

    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
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
    .line 25
    if-eqz p1, :cond_1

    .line 26
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "root":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 28
    .local v0, "data":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 29
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 36
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 38
    const-string v3, "NUMERO-TRANSACCION"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTransacion:Ljava/lang/String;

    .line 39
    const-string v3, "NRO_CELULAR"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTelefono:Ljava/lang/String;

    .line 40
    const-string v3, "OTP-IDTRX"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpIdtrx:Ljava/lang/String;

    .line 41
    const-string v3, "OTP-CODOTP"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->otpCodotp:Ljava/lang/String;

    .line 42
    const-string v2, "MSGID"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->msgid:Ljava/lang/String;

    .line 46
    :cond_1
    return-void
.end method

.method public peditOTP()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTransacion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->numeroTransacion:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

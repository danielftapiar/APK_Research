.class public Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;
.super Ljava/lang/Object;
.source "EscalaresMovLineaCreditoCC.java"


# instance fields
.field cartola:Ljava/lang/String;

.field ccc:Ljava/lang/String;

.field cobrarcomision:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field fecdesde:Ljava/lang/String;

.field fechasta:Ljava/lang/String;

.field informados:Ljava/lang/String;

.field movidesde:Ljava/lang/String;

.field movihasta:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field regrecuper:Ljava/lang/String;

.field timestamp_1:Ljava/lang/String;

.field tipregistro:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    const-string v0, "CCC"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->ccc:Ljava/lang/String;

    .line 32
    const-string v0, "DIVISA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->divisa:Ljava/lang/String;

    .line 33
    const-string v0, "FECDESDE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->fecdesde:Ljava/lang/String;

    .line 34
    const-string v0, "FECHASTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->fechasta:Ljava/lang/String;

    .line 35
    const-string v0, "MOVIDESDE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->movidesde:Ljava/lang/String;

    .line 36
    const-string v0, "MOVIHASTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->movihasta:Ljava/lang/String;

    .line 37
    const-string v0, "TIPREGISTRO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->tipregistro:Ljava/lang/String;

    .line 38
    const-string v0, "TIMESTAMP_1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->timestamp_1:Ljava/lang/String;

    .line 39
    const-string v0, "REGRECUPER"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->regrecuper:Ljava/lang/String;

    .line 40
    const-string v0, "COBRARCOMISION"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->cobrarcomision:Ljava/lang/String;

    .line 41
    const-string v0, "CARTOLA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->cartola:Ljava/lang/String;

    .line 42
    const-string v0, "INFORMADOS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->informados:Ljava/lang/String;

    .line 43
    const-string v0, "MSGID"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->msgid:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public getCartola()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->cartola:Ljava/lang/String;

    return-object v0
.end method

.method public getCcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->ccc:Ljava/lang/String;

    return-object v0
.end method

.method public getCobrarcomision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->cobrarcomision:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getFecdesde()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->fecdesde:Ljava/lang/String;

    return-object v0
.end method

.method public getFechasta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->fechasta:Ljava/lang/String;

    return-object v0
.end method

.method public getInformados()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->informados:Ljava/lang/String;

    return-object v0
.end method

.method public getMovidesde()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->movidesde:Ljava/lang/String;

    return-object v0
.end method

.method public getMovihasta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->movihasta:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getRegrecuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->regrecuper:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->timestamp_1:Ljava/lang/String;

    return-object v0
.end method

.method public getTipregistro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;->tipregistro:Ljava/lang/String;

    return-object v0
.end method

.class public Lcl/santander/santanderCL/data/response/ItemSuscripcion;
.super Ljava/lang/Object;
.source "ItemSuscripcion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field codEFT:Ljava/lang/String;

.field datID1:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field empresa:Ljava/lang/String;

.field mail:Ljava/lang/String;

.field numCVN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    const-string v0, "GLSSCC"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->descripcion:Ljava/lang/String;

    .line 25
    const-string v0, "NOMCNV"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->empresa:Ljava/lang/String;

    .line 26
    const-string v0, "NUMCVN"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->numCVN:Ljava/lang/String;

    .line 27
    const-string v0, "CODEFT"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->codEFT:Ljava/lang/String;

    .line 28
    const-string v0, "DATID1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->datID1:Ljava/lang/String;

    .line 29
    const-string v0, "GLSEML"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->mail:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodEFT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->codEFT:Ljava/lang/String;

    return-object v0
.end method

.method public getDatID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->datID1:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getEmpresa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->empresa:Ljava/lang/String;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getNumCVN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->numCVN:Ljava/lang/String;

    return-object v0
.end method

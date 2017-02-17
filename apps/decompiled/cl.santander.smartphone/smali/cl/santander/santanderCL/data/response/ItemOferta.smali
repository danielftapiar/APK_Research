.class public Lcl/santander/santanderCL/data/response/ItemOferta;
.super Ljava/lang/Object;
.source "ItemOferta.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field descComercio:Ljava/lang/String;

.field descOferta:Ljava/lang/String;

.field horario:Ljava/lang/String;

.field mail:Ljava/lang/String;

.field telefono:Ljava/lang/String;

.field urlComercio:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    .line 23
    const-string v0, "horario"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->horario:Ljava/lang/String;

    .line 24
    const-string v0, "telefono"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->telefono:Ljava/lang/String;

    .line 25
    const-string v0, "urlComercio"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->urlComercio:Ljava/lang/String;

    .line 26
    const-string v0, "mail"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->mail:Ljava/lang/String;

    .line 27
    const-string v0, "descComercio"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->descComercio:Ljava/lang/String;

    .line 28
    const-string v0, "descOferta"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->descOferta:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public getDescComercio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->descComercio:Ljava/lang/String;

    return-object v0
.end method

.method public getDescOferta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->descOferta:Ljava/lang/String;

    return-object v0
.end method

.method public getHorario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->horario:Ljava/lang/String;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getTelefono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlComercio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOferta;->urlComercio:Ljava/lang/String;

    return-object v0
.end method

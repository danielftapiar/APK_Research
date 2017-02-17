.class public Lcl/santander/santanderCL/data/response/ItemIPF;
.super Ljava/lang/Object;
.source "ItemIPF.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field cobrable:Z

.field descripcion:Ljava/lang/String;

.field numeroDeposito:Ljava/lang/String;

.field numeroOperacion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_1

    .line 20
    const-string v1, "COBRABLE"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "resp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 22
    const-string v1, "SI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->cobrable:Z

    .line 24
    :cond_0
    const-string v1, "NUMERO_DEPOSITO"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->numeroDeposito:Ljava/lang/String;

    .line 25
    const-string v1, "DESCRIPCION_TIPO_DEPOSITO"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->descripcion:Ljava/lang/String;

    .line 26
    const-string v1, "NUMERO_OPERACION"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->numeroOperacion:Ljava/lang/String;

    .line 31
    .end local v0    # "resp":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->numeroDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroOperacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->numeroOperacion:Ljava/lang/String;

    return-object v0
.end method

.method public isCobrable()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemIPF;->cobrable:Z

    return v0
.end method

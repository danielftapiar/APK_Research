.class public Lcl/santander/santanderCL/data/response/ItemUltTransf;
.super Ljava/lang/Object;
.source "ItemUltTransf.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field codigoBanco:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field nombreCliente:Ljava/lang/String;

.field numeroCuenta:Ljava/lang/String;

.field numeroPam:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 25
    const-string v0, "RUT-CLIENTE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->rutCliente:Ljava/lang/String;

    .line 26
    const-string v0, "NUMERO-CUENTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->numeroCuenta:Ljava/lang/String;

    .line 27
    const-string v0, "FECHA-TEF"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->fecha:Ljava/lang/String;

    .line 28
    const-string v0, "NOMBRE-CLIENTE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->nombreCliente:Ljava/lang/String;

    .line 29
    const-string v0, "CODIGO-BANCO-CCA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->codigoBanco:Ljava/lang/String;

    .line 31
    const-string v0, "NUMERO-PAM"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->numeroPam:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodigoBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->codigoBanco:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->codigoBanco:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->getNombreBanco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNombreCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->nombreCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->numeroCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCuentaScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->numeroCuenta:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRutCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->rutCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getRutClienteScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemUltTransf;->rutCliente:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

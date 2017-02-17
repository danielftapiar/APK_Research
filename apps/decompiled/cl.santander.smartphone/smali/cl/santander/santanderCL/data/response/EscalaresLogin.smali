.class public Lcl/santander/santanderCL/data/response/EscalaresLogin;
.super Ljava/lang/Object;
.source "EscalaresLogin.java"


# instance fields
.field cuenta:Ljava/lang/String;

.field estadoCambioDeClave:Ljava/lang/String;

.field nom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
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
    const-string v0, "NOM"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->nom:Ljava/lang/String;

    .line 26
    const-string v0, "ESTADOCAMBIOCLAVE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->estadoCambioDeClave:Ljava/lang/String;

    .line 27
    const-string v0, "CUENTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->cuenta:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getEstadoCambioDeClave()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->estadoCambioDeClave:Ljava/lang/String;

    return-object v0
.end method

.method public getNom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->nom:Ljava/lang/String;

    return-object v0
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->cuenta:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setEstadoCambioDeClave(Ljava/lang/String;)V
    .locals 0
    .param p1, "estadoCambioDeClave"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->estadoCambioDeClave:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNom(Ljava/lang/String;)V
    .locals 0
    .param p1, "nom"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresLogin;->nom:Ljava/lang/String;

    .line 40
    return-void
.end method

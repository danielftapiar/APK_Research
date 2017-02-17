.class public Lcl/santander/santanderCL/response/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field private escalares:Lcl/santander/santanderCL/data/response/EscalaresLogin;

.field private info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/response/LoginResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresLogin;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/response/LoginResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresLogin;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresLogin;->getCuenta()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/response/LoginResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/response/LoginResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresLogin;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcl/santander/santanderCL/response/LoginResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresLogin;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresLogin;->getNom()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 17
    if-eqz p1, :cond_1

    .line 18
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    .local v1, "root":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 20
    .local v0, "data":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 21
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/LoginResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 26
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 28
    new-instance v2, Lcl/santander/santanderCL/data/response/EscalaresLogin;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/EscalaresLogin;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/LoginResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresLogin;

    .line 38
    :cond_1
    return-void
.end method

.method public setInfo(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 0
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 49
    iput-object p1, p0, Lcl/santander/santanderCL/response/LoginResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 50
    return-void
.end method

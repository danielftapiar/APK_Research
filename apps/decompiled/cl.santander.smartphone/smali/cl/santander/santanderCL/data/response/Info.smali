.class public Lcl/santander/santanderCL/data/response/Info;
.super Ljava/lang/Object;
.source "Info.java"


# instance fields
.field codError:Ljava/lang/String;

.field desErr:Ljava/lang/String;

.field msgUsuario:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "codError"    # Ljava/lang/String;
    .param p2, "descError"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/Info;->codError:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/Info;->desErr:Ljava/lang/String;

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

    .line 24
    const-string v0, "CODERR"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/Info;->codError:Ljava/lang/String;

    .line 25
    const-string v0, "DESERR"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/Info;->desErr:Ljava/lang/String;

    .line 26
    const-string v0, "MSGUSUARIO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/Info;->msgUsuario:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/Info;->codError:Ljava/lang/String;

    return-object v0
.end method

.method public getDesErr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/Info;->desErr:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgUsuario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/Info;->msgUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public setCodError(Ljava/lang/String;)V
    .locals 0
    .param p1, "codError"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/Info;->codError:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDesErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "desErr"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/Info;->desErr:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMsgUsuario(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgUsuario"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/Info;->msgUsuario:Ljava/lang/String;

    .line 53
    return-void
.end method

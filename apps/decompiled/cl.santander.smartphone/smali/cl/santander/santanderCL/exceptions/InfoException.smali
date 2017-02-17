.class public Lcl/santander/santanderCL/exceptions/InfoException;
.super Ljava/lang/Exception;
.source "InfoException.java"


# instance fields
.field private info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 2
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 11
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/Info;->getDesErr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/Info;->setMsgUsuario(Ljava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/InfoException;->info:Lcl/santander/santanderCL/data/response/Info;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

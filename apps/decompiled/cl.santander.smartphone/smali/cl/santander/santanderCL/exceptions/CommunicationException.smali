.class public Lcl/santander/santanderCL/exceptions/CommunicationException;
.super Ljava/lang/Exception;
.source "CommunicationException.java"


# instance fields
.field private code:I

.field private ex:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    iput p1, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->code:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->code:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->ex:Ljava/lang/Exception;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->code:I

    .line 15
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->code:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public isErrorCertification()Z
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "resp":Z
    iget-object v1, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->ex:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->ex:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/exceptions/CommunicationException;->ex:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "security"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 41
    :cond_0
    return v0
.end method

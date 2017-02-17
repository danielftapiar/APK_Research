.class public Lcl/santander/santanderCL/exceptions/CertificationException;
.super Ljava/lang/Exception;
.source "CertificationException.java"


# instance fields
.field entorno:Z

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/CertificationException;->message:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "entorno"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/CertificationException;->message:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcl/santander/santanderCL/exceptions/CertificationException;->entorno:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/CertificationException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcl/santander/santanderCL/exceptions/CertificationException;->entorno:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/CertificationException;->message:Ljava/lang/String;

    .line 28
    return-void
.end method

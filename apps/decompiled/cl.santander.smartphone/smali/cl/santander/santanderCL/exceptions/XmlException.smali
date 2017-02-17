.class public Lcl/santander/santanderCL/exceptions/XmlException;
.super Ljava/lang/Exception;
.source "XmlException.java"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/XmlException;->message:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/XmlException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/XmlException;->message:Ljava/lang/String;

    .line 22
    return-void
.end method

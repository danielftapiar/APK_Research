.class public Lcl/santander/santanderCL/exceptions/FormatException;
.super Ljava/lang/Exception;
.source "FormatException.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/FormatException;->message:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/FormatException;->message:Ljava/lang/String;

    return-object v0
.end method

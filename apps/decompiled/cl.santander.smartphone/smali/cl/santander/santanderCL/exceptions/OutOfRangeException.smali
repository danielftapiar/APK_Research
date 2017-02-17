.class public Lcl/santander/santanderCL/exceptions/OutOfRangeException;
.super Ljava/lang/Exception;
.source "OutOfRangeException.java"


# instance fields
.field private message:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "El valor debe tener un rango de "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " valor introducido:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/exceptions/OutOfRangeException;->message:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/OutOfRangeException;->message:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/OutOfRangeException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/OutOfRangeException;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/OutOfRangeException;->message:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/OutOfRangeException;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

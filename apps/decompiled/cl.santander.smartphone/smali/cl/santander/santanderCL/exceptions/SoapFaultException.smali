.class public Lcl/santander/santanderCL/exceptions/SoapFaultException;
.super Ljava/lang/Exception;
.source "SoapFaultException.java"


# static fields
.field private static final serialVersionUID:J = -0x1aac3355ec3ebb43L


# instance fields
.field private error:Ljava/lang/Error;

.field private fault:Lorg/ksoap2/SoapFault;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/SoapFault;)V
    .locals 0
    .param p1, "fault"    # Lorg/ksoap2/SoapFault;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/SoapFaultException;->fault:Lorg/ksoap2/SoapFault;

    .line 34
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Error;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/SoapFaultException;->error:Ljava/lang/Error;

    return-object v0
.end method

.method public getFault()Lorg/ksoap2/SoapFault;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/exceptions/SoapFaultException;->fault:Lorg/ksoap2/SoapFault;

    return-object v0
.end method

.method public setError(Ljava/lang/Error;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Error;

    .prologue
    .line 49
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/SoapFaultException;->error:Ljava/lang/Error;

    .line 50
    return-void
.end method

.method public setFault(Lorg/ksoap2/SoapFault;)V
    .locals 0
    .param p1, "fault"    # Lorg/ksoap2/SoapFault;

    .prologue
    .line 41
    iput-object p1, p0, Lcl/santander/santanderCL/exceptions/SoapFaultException;->fault:Lorg/ksoap2/SoapFault;

    .line 42
    return-void
.end method

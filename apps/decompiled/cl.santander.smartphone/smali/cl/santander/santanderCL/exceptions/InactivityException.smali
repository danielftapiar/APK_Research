.class public Lcl/santander/santanderCL/exceptions/InactivityException;
.super Lcl/santander/santanderCL/exceptions/SoapFaultException;
.source "InactivityException.java"


# direct methods
.method public constructor <init>(Lcl/santander/santanderCL/exceptions/SoapFaultException;)V
    .locals 1
    .param p1, "ex"    # Lcl/santander/santanderCL/exceptions/SoapFaultException;

    .prologue
    .line 6
    invoke-direct {p0}, Lcl/santander/santanderCL/exceptions/SoapFaultException;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v0

    invoke-super {p0, v0}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->setFault(Lorg/ksoap2/SoapFault;)V

    .line 8
    invoke-virtual {p1}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getError()Ljava/lang/Error;

    move-result-object v0

    invoke-super {p0, v0}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->setError(Ljava/lang/Error;)V

    .line 9
    return-void
.end method

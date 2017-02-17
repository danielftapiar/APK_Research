.class public interface abstract Lcl/santander/santanderCL/operations/IBusiness;
.super Ljava/lang/Object;
.source "IBusiness.java"


# virtual methods
.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation
.end method

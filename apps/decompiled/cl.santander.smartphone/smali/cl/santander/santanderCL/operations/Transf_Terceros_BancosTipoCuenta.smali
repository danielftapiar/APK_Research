.class public Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;
.super Ljava/lang/Object;
.source "Transf_Terceros_BancosTipoCuenta.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;

    invoke-direct {v0}, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;-><init>()V

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

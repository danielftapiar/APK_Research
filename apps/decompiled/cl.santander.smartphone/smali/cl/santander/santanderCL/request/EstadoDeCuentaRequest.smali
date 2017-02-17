.class public Lcl/santander/santanderCL/request/EstadoDeCuentaRequest;
.super Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;
.source "EstadoDeCuentaRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "strRut"    # Ljava/lang/String;
    .param p2, "strCodEnt"    # Ljava/lang/String;
    .param p3, "strCentAlt"    # Ljava/lang/String;
    .param p4, "strMoneda"    # Ljava/lang/String;
    .param p5, "strCuenta"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.class public Lcl/santander/santanderCL/data/request/InputSuscripcionPideDesafio;
.super Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;
.source "InputSuscripcionPideDesafio.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "segmento"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

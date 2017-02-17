.class public Lcl/santander/santanderCL/data/LimitesTransferencias;
.super Ljava/lang/Object;
.source "LimitesTransferencias.java"


# instance fields
.field mismoBanco:D

.field otrosBancos:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMismoBanco()D
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcl/santander/santanderCL/data/LimitesTransferencias;->mismoBanco:D

    return-wide v0
.end method

.method public getMismoBancoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    iget-wide v0, p0, Lcl/santander/santanderCL/data/LimitesTransferencias;->mismoBanco:D

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtrosBancos()D
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcl/santander/santanderCL/data/LimitesTransferencias;->otrosBancos:D

    return-wide v0
.end method

.method public getOtrosBancosScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcl/santander/santanderCL/data/LimitesTransferencias;->otrosBancos:D

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMismoBanco(D)V
    .locals 0
    .param p1, "mismoBanco"    # D

    .prologue
    .line 14
    iput-wide p1, p0, Lcl/santander/santanderCL/data/LimitesTransferencias;->mismoBanco:D

    .line 15
    return-void
.end method

.method public setOtrosBancos(D)V
    .locals 0
    .param p1, "otrosBancos"    # D

    .prologue
    .line 21
    iput-wide p1, p0, Lcl/santander/santanderCL/data/LimitesTransferencias;->otrosBancos:D

    .line 22
    return-void
.end method

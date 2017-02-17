.class public Lcom/prey/backwardcompatibility/AboveCupcakeSupport;
.super Ljava/lang/Object;
.source "AboveCupcakeSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.class public Lnet/veritran/android/implementation/VTBigIntegerImplementation;
.super Ljava/math/BigInteger;
.source "VTBigIntegerImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

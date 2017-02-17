.class public Lnet/veritran/android/implementation/AndroidVTBigIntegerImplementation;
.super Ljava/lang/Object;
.source "AndroidVTBigIntegerImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;


# instance fields
.field num:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTBigIntegerImplementation;->num:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

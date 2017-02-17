.class public final Lcl/birdie/toolkit/PixelPair;
.super Ljava/lang/Object;
.source "PixelPair.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcl/birdie/toolkit/PixelPair;->x:I

    .line 11
    iput p2, p0, Lcl/birdie/toolkit/PixelPair;->y:I

    .line 12
    return-void
.end method

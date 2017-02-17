.class public final Lmin3d/vos/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field public a:S

.field public b:S

.field public c:S


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "$a"    # I
    .param p2, "$b"    # I
    .param p3, "$c"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    int-to-short v0, p1

    iput-short v0, p0, Lmin3d/vos/Face;->a:S

    .line 26
    int-to-short v0, p2

    iput-short v0, p0, Lmin3d/vos/Face;->b:S

    .line 27
    int-to-short v0, p3

    iput-short v0, p0, Lmin3d/vos/Face;->c:S

    .line 28
    return-void
.end method

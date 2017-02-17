.class public final Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/chunk/Format;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 2

    .prologue
    .line 34
    iget v0, p1, Lcom/google/android/exoplayer/chunk/Format;->c:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->c:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/google/android/exoplayer/chunk/Format;

    check-cast p2, Lcom/google/android/exoplayer/chunk/Format;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;->a(Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v0

    return v0
.end method

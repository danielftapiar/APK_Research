.class final Lcom/google/android/exoplayer/util/SlidingPercentile$1;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->a:I

    iget v1, p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->a:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    check-cast p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer/util/SlidingPercentile$1;->a(Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;)I

    move-result v0

    return v0
.end method

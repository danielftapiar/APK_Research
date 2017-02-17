.class public final Lcom/google/android/exoplayer/upstream/Allocation;
.super Ljava/lang/Object;
.source "Allocation.java"


# instance fields
.field public final a:[B

.field private final b:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/Allocation;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/exoplayer/upstream/Allocation;->b:I

    add-int/2addr v0, p1

    return v0
.end method

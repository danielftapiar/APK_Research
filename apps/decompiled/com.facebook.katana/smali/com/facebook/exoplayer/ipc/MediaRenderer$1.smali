.class final Lcom/facebook/exoplayer/ipc/MediaRenderer$1;
.super Ljava/lang/Object;
.source "MediaRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/exoplayer/ipc/MediaRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/exoplayer/ipc/MediaRenderer;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/exoplayer/ipc/MediaRenderer;
    .locals 1

    .prologue
    .line 23
    new-array v0, p0, [Lcom/facebook/exoplayer/ipc/MediaRenderer;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Lcom/facebook/exoplayer/ipc/MediaRenderer$1;->a(Landroid/os/Parcel;)Lcom/facebook/exoplayer/ipc/MediaRenderer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Lcom/facebook/exoplayer/ipc/MediaRenderer$1;->a(I)[Lcom/facebook/exoplayer/ipc/MediaRenderer;

    move-result-object v0

    return-object v0
.end method

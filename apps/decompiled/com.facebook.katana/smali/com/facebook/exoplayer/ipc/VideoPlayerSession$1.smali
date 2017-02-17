.class final Lcom/facebook/exoplayer/ipc/VideoPlayerSession$1;
.super Ljava/lang/Object;
.source "VideoPlayerSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
    .locals 1

    .prologue
    .line 25
    new-array v0, p0, [Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-static {p1}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession$1;->a(Landroid/os/Parcel;)Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-static {p1}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession$1;->a(I)[Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    move-result-object v0

    return-object v0
.end method

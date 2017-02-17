.class public final Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
.super Ljava/lang/Object;
.source "VideoPlayerSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

.field public c:Lcom/facebook/exoplayer/ipc/MediaRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession$1;

    invoke-direct {v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession$1;-><init>()V

    sput-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->a:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    .line 41
    const-class v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    .line 35
    iput-object p3, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    .line 36
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    return-void
.end method

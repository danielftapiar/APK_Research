.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->b:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->b:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->a(Landroid/view/Surface;)V

    .line 545
    return-void
.end method

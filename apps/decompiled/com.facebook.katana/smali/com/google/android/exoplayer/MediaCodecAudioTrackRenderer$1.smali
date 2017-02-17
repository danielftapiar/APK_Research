.class Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

.field final synthetic b:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->b:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->a:Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->b:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->a:Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;->a(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 329
    return-void
.end method

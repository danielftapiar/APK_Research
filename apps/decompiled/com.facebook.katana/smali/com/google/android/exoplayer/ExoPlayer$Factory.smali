.class public final Lcom/google/android/exoplayer/ExoPlayer$Factory;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/google/android/exoplayer/ExoPlayer;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method

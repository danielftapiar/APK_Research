.class Lcom/facebook/exoplayer/VideoPlayerService$2;
.super Ljava/util/TimerTask;
.source "VideoPlayerService.java"


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;


# direct methods
.method constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 412
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    .line 413
    return-void
.end method

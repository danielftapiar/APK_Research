.class Lcom/facebook/exoplayer/VideoPlayerService$1;
.super Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;
.source "VideoPlayerService.java"


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;


# direct methods
.method constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;-><init>()V

    return-void
.end method

.method private h(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;-><init>(ILjava/lang/String;)V

    .line 109
    new-instance v1, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/exoplayer/ipc/MediaRenderer;-><init>(ILjava/lang/String;)V

    .line 111
    new-instance v2, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;-><init>(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;)V

    return-object v2
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "is videoRenderer null? "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hashcode is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "is audioRenderer null? "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashcode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "what is the size of the renderers map? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v1}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 189
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v1}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 192
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 194
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prepare already started for video renderer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " audio renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 176
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 180
    goto :goto_1

    .line 199
    :cond_2
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;J)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer/ExoPlayer;->a(J)V

    .line 237
    monitor-exit v1

    return-void

    .line 235
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "internalPlayer seekTo throw exception"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Landroid/net/Uri;)V
    .locals 8

    .prologue
    const/16 v2, 0x3e8

    .line 116
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayer.Factory.newInstance for session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {v2, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->a(II)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v1

    .line 121
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {v0, v2, p1}, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer;->a(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 123
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Start build renderers of session "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v4, "ExoHttpSource"

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;-><init>()V

    invoke-direct {v0, p2, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 131
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;)V

    .line 135
    new-instance v3, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;)V

    .line 141
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "hashcode of v: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v4}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " rendererImpl: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "hashcode of a: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v4}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " rendererImpl: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "mMediaCodecTrackRendererHashMap.size() = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v5}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "mExoPlayerHashMap.size() = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v5}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v6, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    iget-object v7, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-interface {v0, v6, v7}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer;->a([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 169
    return-void
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;F)V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 299
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/google/android/exoplayer/ExoPlayer;->a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;Ljava/lang/Object;)V

    .line 306
    monitor-exit v2

    return-void

    .line 304
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "internalPlayer set volume throw exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Landroid/view/Surface;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 316
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 317
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Is something null? rendererImpl?"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mediaSession?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " internalPlayer?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 323
    invoke-static {}, Lcom/facebook/exoplayer/VideoPlayerService;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set surface for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " renderer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session\'s renderer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v3}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    invoke-interface {v1, v0, p3}, Lcom/google/android/exoplayer/ExoPlayer;->b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;Ljava/lang/Object;)V

    .line 334
    monitor-exit v5

    return-void

    :cond_0
    move v4, v3

    .line 317
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 332
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "internalPlayer set surface throw exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Z)V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 283
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 284
    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 285
    iget v0, p2, Lcom/facebook/exoplayer/ipc/MediaRenderer;->a:I

    invoke-interface {v1, v0, p3}, Lcom/google/android/exoplayer/ExoPlayer;->a(IZ)V

    .line 289
    monitor-exit v2

    return-void

    .line 287
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "internalPlayer renderer enable throw exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 387
    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v2}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Z)V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer/ExoPlayer;->a(Z)V

    .line 225
    monitor-exit v1

    return-void

    .line 223
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "internalPlayer setPlayWhenReady throw exception"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Z
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->b()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 210
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "internalPlayer getPlayWhenReady throw exception"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->c()V

    .line 249
    monitor-exit v1

    return-void

    .line 247
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "internalPlayer stop throw exception"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;)V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 401
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    :cond_0
    monitor-exit v1

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 258
    if-nez v0, :cond_0

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    monitor-exit v1

    .line 263
    invoke-direct {p0, p1}, Lcom/facebook/exoplayer/VideoPlayerService$1;->h(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 264
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->d()V

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)I
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 341
    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->h()I

    move-result v0

    monitor-exit v1

    return v0

    .line 344
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "getBufferedPercentage throws"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->g()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 355
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "getBufferedPositionUs throws"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->f()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 366
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "getCurrentPositionUs throws"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v0}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->e()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 377
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "getDurationUs throws"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

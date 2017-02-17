.class public Lcom/facebook/tools/dextr/runtime/DextrRuntime;
.super Ljava/lang/Object;
.source "DextrRuntime.java"

# interfaces
.implements Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

.field private final b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;

.field private final d:Lcom/facebook/tools/dextr/runtime/NotificationControls;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/facebook/analytics/logger/AnalyticsLogger;

.field private final f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

.field private final g:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

.field private final h:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;Lcom/facebook/tools/dextr/runtime/logger/FileManager;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;Lcom/facebook/analytics/logger/AnalyticsLogger;ZZ)V
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;-><init>(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

    .line 90
    new-instance v0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$2;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime$2;-><init>(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->h:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;

    .line 171
    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    .line 172
    iput-object p3, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->g:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

    .line 173
    iput-object p5, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    .line 174
    iput-object p6, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;

    .line 175
    iput-object p7, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->e:Lcom/facebook/analytics/logger/AnalyticsLogger;

    .line 176
    invoke-static {p1, p2, p8}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Z)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    .line 178
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->g:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->h:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->a(Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;)V

    .line 179
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a()V

    .line 180
    invoke-static {p8, p9}, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not set the manual tracing state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {v0, p7}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Lcom/facebook/analytics/logger/AnalyticsLogger;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {p4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(I)V

    .line 186
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {p4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(J)V

    .line 188
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b()V

    .line 190
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V

    .line 192
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Z)Lcom/facebook/tools/dextr/runtime/NotificationControls;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;

    invoke-direct {v1, v0, p1}, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;-><init>(Lcom/facebook/tools/dextr/runtime/NotificationControls;Lcom/facebook/tools/dextr/runtime/logger/TraceManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Z)V

    .line 128
    if-eqz p2, :cond_0

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Z)V

    .line 132
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->b()V

    .line 139
    new-instance v0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;-><init>(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    invoke-static {v0}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->a(Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;)V

    .line 158
    return-void
.end method

.method static synthetic b(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/analytics/logger/AnalyticsLogger;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->e:Lcom/facebook/analytics/logger/AnalyticsLogger;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a()Z

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->g:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->a()Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/tools/dextr/runtime/sampler/TraceSamplerFactory;->a(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;ZLcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;)Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->i()V

    .line 208
    :cond_0
    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;

    invoke-interface {v0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-interface {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/logger/FileManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/tools/dextr/runtime/logger/Trace;)V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->b()Ljava/io/File;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_2
    monitor-enter p0

    .line 244
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 245
    :goto_1
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Z)V

    .line 248
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

    invoke-interface {v0, v1, v2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;->b(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V

    .line 251
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

    invoke-interface {v0, v1, v2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;->a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Uploading:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;)V

    goto :goto_0

    .line 244
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

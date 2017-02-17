.class Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;
.super Ljava/lang/Object;
.source "DextrRuntime.java"

# interfaces
.implements Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Successful:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v0

    const-string v1, "dextr_upload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/analytics/logger/AnalyticsLogger;->a(Ljava/lang/String;Z)Lcom/facebook/analytics/event/HoneyClientEventFast;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "result"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/event/HoneyClientEventFast;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/event/HoneyClientEventFast;

    .line 61
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->b()V

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->c(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;)V

    .line 66
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Failed:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;)V

    .line 75
    :cond_0
    const-string v0, "Dextr"

    const-string v1, "Could not upload trace: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->b(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v0

    const-string v1, "dextr_upload"

    invoke-interface {v0, v1, v4}, Lcom/facebook/analytics/logger/AnalyticsLogger;->a(Ljava/lang/String;Z)Lcom/facebook/analytics/event/HoneyClientEventFast;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "result"

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/event/HoneyClientEventFast;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/event/HoneyClientEventFast;

    .line 83
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->b()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$1;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    .line 87
    return-void
.end method

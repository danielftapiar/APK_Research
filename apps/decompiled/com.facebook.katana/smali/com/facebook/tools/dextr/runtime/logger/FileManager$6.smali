.class Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;->a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;->a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;->a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v0

    const-string v1, "dextr_trace_trimmed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/analytics/logger/AnalyticsLogger;->a(Ljava/lang/String;Z)Lcom/facebook/analytics/event/HoneyClientEventFast;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->b()V

    .line 234
    :cond_0
    return-void
.end method

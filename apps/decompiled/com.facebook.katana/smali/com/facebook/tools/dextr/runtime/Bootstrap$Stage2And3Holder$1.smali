.class final Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/prefs/shared/FbSharedPreferences;

.field final synthetic b:Ljava/util/concurrent/ExecutorService;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/facebook/inject/FbInjector;

.field final synthetic e:Lcom/facebook/tools/dextr/runtime/logger/FileManager;


# direct methods
.method constructor <init>(Lcom/facebook/prefs/shared/FbSharedPreferences;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/facebook/inject/FbInjector;Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->d:Lcom/facebook/inject/FbInjector;

    iput-object p5, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->e:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    invoke-interface {v0, v1, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Lcom/facebook/prefs/shared/PrefKey;Z)Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    sget-object v2, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    invoke-interface {v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Lcom/facebook/prefs/shared/PrefKey;Z)Z

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;-><init>(Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;ZZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    return-void
.end method

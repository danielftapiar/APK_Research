.class public abstract Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;
.super Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;
.source "AbstractNodexSplashActivity.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Handler;

.field protected c:Lcom/facebook/nodex/resources/NodexResources;

.field protected d:Ljava/util/concurrent/ExecutorService;

.field protected e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

.field private f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

.field private g:Landroid/content/ContentResolver;

.field private h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View;

.field private m:Ljava/lang/Runnable;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;-><init>()V

    .line 395
    return-void
.end method

.method static synthetic a(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Lcom/facebook/nodex/startup/splashscreen/NodexError;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/splashscreen/NodexError;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/nodex/startup/splashscreen/NodexError;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 647
    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 649
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Ljava/lang/String;)V

    const v2, 0x1051691d

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/crashloop/CrashLoop;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/resources/NodexResources;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->setContentView(I)V

    .line 182
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n()V

    .line 183
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v1, v0}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->l:Landroid/view/View;

    .line 225
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Ljava/lang/Runnable;

    .line 232
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v1, v0}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Landroid/widget/TextView;

    .line 240
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Ljava/lang/Runnable;

    .line 247
    return-void
.end method

.method private o()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 377
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->q()V

    .line 511
    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 514
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 518
    iput-boolean v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i:Z

    .line 519
    iput-boolean v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j:Z

    .line 522
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->l()V

    .line 526
    invoke-virtual {p0, v1, v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->overridePendingTransition(II)V

    .line 527
    return-void
.end method

.method private r()Z
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 597
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c()Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_1

    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 601
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Landroid/net/Uri;
.end method

.method protected abstract h()Landroid/content/ComponentName;
.end method

.method protected abstract i()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->l()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;B)V

    const v2, 0x62f5e415

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method protected k()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 621
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 622
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i()Ljava/util/Set;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 624
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 627
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 629
    return-object v1
.end method

.method protected l()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;->b()Z

    .line 640
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 641
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 642
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0x5bec4cca

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 162
    invoke-super {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    .line 165
    new-instance v1, Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    .line 166
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g:Landroid/content/ContentResolver;

    .line 167
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    .line 168
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    .line 169
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d:Ljava/util/concurrent/ExecutorService;

    .line 170
    new-instance v1, Lcom/facebook/nodex/resources/NodexResources;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/resources/NodexResources;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    .line 171
    new-instance v1, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    .line 173
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m()V

    .line 174
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j()V

    .line 175
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, -0x11024dee

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0x2f63e288

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 208
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onDestroy()V

    .line 209
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 216
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, -0x7988757a

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, -0x3e7eeab4

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 548
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onPause()V

    .line 549
    iget-boolean v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i:Z

    if-eqz v1, :cond_0

    .line 551
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    .line 565
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    const v3, 0x5cbe1e52

    invoke-static {v2, v1, v4, v5, v3}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 569
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j:Z

    .line 571
    :cond_0
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, -0x87cff29

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0xdd16079

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 578
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 579
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onResume()V

    .line 580
    iget-boolean v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j:Z

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 591
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 593
    :cond_0
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, -0x1f9bbd2c

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method

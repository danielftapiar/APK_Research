.class public Lcom/prey/services/PreyRunnerService;
.super Landroid/app/Service;
.source "PreyRunnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/services/PreyRunnerService$LocalBinder;
    }
.end annotation


# static fields
.field public static interval:J

.field public static pausedAt:J

.field public static running:Z

.field public static startedAt:J


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/prey/services/PreyRunnerService;->running:Z

    .line 31
    sput-wide v2, Lcom/prey/services/PreyRunnerService;->startedAt:J

    .line 32
    sput-wide v2, Lcom/prey/services/PreyRunnerService;->interval:J

    .line 33
    sput-wide v2, Lcom/prey/services/PreyRunnerService;->pausedAt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/prey/services/PreyRunnerService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/prey/services/PreyRunnerService$LocalBinder;-><init>(Lcom/prey/services/PreyRunnerService;)V

    iput-object v0, p0, Lcom/prey/services/PreyRunnerService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/prey/services/PreyRunnerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/prey/actions/ActionsRunnner;

    invoke-direct {v0}, Lcom/prey/actions/ActionsRunnner;-><init>()V

    .line 49
    .local v0, "exec":Lcom/prey/actions/ActionsRunnner;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/prey/services/PreyRunnerService;->running:Z

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/prey/services/PreyRunnerService;->startedAt:J

    .line 51
    invoke-virtual {v0, p0}, Lcom/prey/actions/ActionsRunnner;->run(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 59
    .local v0, "preyConfig":Lcom/prey/PreyConfig;
    invoke-static {p0}, Lcom/prey/actions/observer/ActionsController;->getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/actions/observer/ActionsController;->finishRunningJosb()V

    .line 60
    const/4 v1, 0x0

    sput-boolean v1, Lcom/prey/services/PreyRunnerService;->running:Z

    .line 62
    return-void
.end method

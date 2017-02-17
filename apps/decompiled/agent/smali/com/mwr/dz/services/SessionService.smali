.class public Lcom/mwr/dz/services/SessionService;
.super Lcom/mwr/common/android/app/NotifyingService;
.source "SessionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/dz/services/SessionService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final MSG_START_SESSION:I = 0x1

.field public static final MSG_STOP_SESSION:I = 0x2

.field private static running:Z


# instance fields
.field private final messenger:Landroid/os/Messenger;

.field private sessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mwr/dz/services/SessionService;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mwr/common/android/app/NotifyingService;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mwr/dz/services/SessionService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/mwr/dz/services/SessionService$IncomingHandler;-><init>(Lcom/mwr/dz/services/SessionService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mwr/dz/services/SessionService;->messenger:Landroid/os/Messenger;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/services/SessionService;->sessions:Ljava/util/HashSet;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/services/SessionService;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mwr/dz/services/SessionService;->updateNotification()V

    return-void
.end method

.method public static startAndBindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 94
    sget-boolean v1, Lcom/mwr/dz/services/SessionService;->running:Z

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mwr/dz/services/SessionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mwr/dz/services/SessionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 99
    return-void
.end method

.method private updateNotification()V
    .locals 6

    .prologue
    const/high16 v1, 0x7f060000

    const v5, 0x7f030009

    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/mwr/dz/services/SessionService;->sessions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, v1}, Lcom/mwr/dz/services/SessionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f02000a

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mwr/dz/activities/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v5, v1, v2}, Lcom/mwr/dz/services/SessionService;->showNotification(Ljava/lang/String;IILandroid/app/PendingIntent;)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mwr/dz/services/SessionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/mwr/dz/services/SessionService;->hideNotification(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mwr/dz/services/SessionService;->sessions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mwr/dz/services/SessionService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/mwr/common/android/app/NotifyingService;->onCreate()V

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mwr/dz/services/SessionService;->running:Z

    .line 76
    return-void
.end method

.method protected onCreateNotification(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 85
    const v0, 0x7f09002a

    const v1, 0x7f02000a

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 86
    const v0, 0x7f09002c

    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/mwr/dz/services/SessionService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mwr/dz/services/SessionService;->running:Z

    .line 81
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mwr/dz/services/SessionService;->sessions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

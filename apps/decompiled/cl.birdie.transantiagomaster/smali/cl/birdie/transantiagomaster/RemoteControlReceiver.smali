.class public Lcl/birdie/transantiagomaster/RemoteControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlReceiver.java"


# static fields
.field static volatile catched:Z

.field static volatile startPress:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/16 v0, 0x0

    sput-wide v0, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->catched:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    .line 18
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "TransantiagoMaster"

    const-string v2, "onReceive: ACTION_MEDIA_BUTTON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 24
    .local v0, "event":Landroid/view/KeyEvent;
    if-nez v0, :cond_1

    .line 25
    const-string v1, "RemoteControlReceiver"

    const-string v2, "onReceive: NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 29
    .restart local v0    # "event":Landroid/view/KeyEvent;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteControlReceiver: KeyCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    const/16 v1, 0x7e

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 33
    const/16 v1, 0x55

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 34
    const/16 v1, 0x4f

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 39
    sget-wide v1, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 40
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    sput-wide v1, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    .line 59
    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 61
    sget-wide v1, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 101
    sput-wide v5, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    .line 102
    const/4 v1, 0x0

    sput-boolean v1, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->catched:Z

    goto :goto_0

    .line 46
    :cond_4
    sget-wide v1, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    sget-boolean v1, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->catched:Z

    if-nez v1, :cond_3

    .line 49
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    sget-wide v3, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5dc

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 50
    sput-wide v5, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->startPress:J

    .line 51
    sput-boolean v7, Lcl/birdie/transantiagomaster/RemoteControlReceiver;->catched:Z

    .line 53
    const-string v1, "RemoteControlReceiver"

    const-string v2, "Llamando a GApp con reconocerVoz = true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "reconocerVoz"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

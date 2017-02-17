.class Ljavax/microedition/lcdui/Display$AlertTimeout;
.super Ljava/util/TimerTask;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertTimeout"
.end annotation


# instance fields
.field private alert:Ljavax/microedition/lcdui/Alert;

.field private final this$0:Ljavax/microedition/lcdui/Display;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Alert;)V
    .locals 0
    .param p2, "alert"    # Ljavax/microedition/lcdui/Alert;

    .prologue
    .line 383
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$AlertTimeout;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 384
    iput-object p2, p0, Ljavax/microedition/lcdui/Display$AlertTimeout;->alert:Ljavax/microedition/lcdui/Alert;

    .line 385
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$AlertTimeout;->alert:Ljavax/microedition/lcdui/Alert;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Alert;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$AlertTimeout;->alert:Ljavax/microedition/lcdui/Alert;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Alert;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v1

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$AlertTimeout;->alert:Ljavax/microedition/lcdui/Alert;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Alert;->getCommands()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$AlertTimeout;->alert:Ljavax/microedition/lcdui/Alert;

    invoke-interface {v1, v0, v2}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 391
    :cond_0
    return-void
.end method

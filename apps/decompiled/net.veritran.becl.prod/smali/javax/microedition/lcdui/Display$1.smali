.class Ljavax/microedition/lcdui/Display$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/Display;

.field private final val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    iput-object p2, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$600(Ljavax/microedition/lcdui/Display$1;)Ljavax/microedition/lcdui/Display;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Display$1;

    .prologue
    .line 497
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 500
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v1

    new-instance v2, Lorg/microemu/device/ui/EventDispatcher$HideNotifyEvent;

    iget-object v3, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v3}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljavax/microedition/lcdui/Display$1$1;

    invoke-direct {v4, p0}, Ljavax/microedition/lcdui/Display$1$1;-><init>(Ljavax/microedition/lcdui/Display$1;)V

    invoke-direct {v2, v3, v4}, Lorg/microemu/device/ui/EventDispatcher$HideNotifyEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 512
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    instance-of v1, v1, Ljavax/microedition/lcdui/Alert;

    if-eqz v1, :cond_3

    .line 513
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Displayable;->showNotify(Ljavax/microedition/lcdui/Display;)V

    .line 514
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Displayable;->repaint()V

    .line 515
    sget-object v1, Ljavax/microedition/lcdui/Alert;->nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    if-nez v1, :cond_1

    .line 516
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    sput-object v1, Ljavax/microedition/lcdui/Alert;->nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    .line 518
    :cond_1
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-static {v1, v2}, Ljavax/microedition/lcdui/Display;->access$002(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)Ljavax/microedition/lcdui/Displayable;

    .line 519
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    check-cast v0, Ljavax/microedition/lcdui/Alert;

    .line 520
    .local v0, "alert":Ljavax/microedition/lcdui/Alert;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Alert;->getTimeout()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    .line 521
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$300(Ljavax/microedition/lcdui/Display;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Ljavax/microedition/lcdui/Display$AlertTimeout;

    iget-object v3, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-direct {v2, v3, v0}, Ljavax/microedition/lcdui/Display$AlertTimeout;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Alert;)V

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Alert;->getTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 541
    .end local v0    # "alert":Ljavax/microedition/lcdui/Alert;
    :cond_2
    :goto_0
    return-void

    .line 535
    :cond_3
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Displayable;->showNotify(Ljavax/microedition/lcdui/Display;)V

    .line 536
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-static {v1, v2}, Ljavax/microedition/lcdui/Display;->access$002(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)Ljavax/microedition/lcdui/Displayable;

    .line 538
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v1, v5}, Ljavax/microedition/lcdui/Display;->setScrollUp(Z)V

    .line 539
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v1, v5}, Ljavax/microedition/lcdui/Display;->setScrollDown(Z)V

    .line 540
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->val$nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Displayable;->repaint()V

    goto :goto_0
.end method

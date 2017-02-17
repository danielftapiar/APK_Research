.class final Ljavax/microedition/lcdui/Display$RunnableWrapper;
.super Ljava/util/TimerTask;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field private final this$0:Ljavax/microedition/lcdui/Display;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 407
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$RunnableWrapper;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 408
    iput-object p2, p0, Ljavax/microedition/lcdui/Display$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 409
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$RunnableWrapper;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/microemu/device/ui/EventDispatcher;->put(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

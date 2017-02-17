.class Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;
.super Lorg/microemu/device/ui/EventDispatcher$Event;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/microemu/device/ui/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableEvent"
.end annotation


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field private final this$0:Lorg/microemu/device/ui/EventDispatcher;


# direct methods
.method public constructor <init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;->this$0:Lorg/microemu/device/ui/EventDispatcher;

    invoke-direct {p0, p1}, Lorg/microemu/device/ui/EventDispatcher$Event;-><init>(Lorg/microemu/device/ui/EventDispatcher;)V

    .line 268
    iput-object p2, p0, Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;->runnable:Ljava/lang/Runnable;

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    return-void
.end method

.class public abstract Lorg/microemu/device/ui/EventDispatcher$Event;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/microemu/device/ui/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Event"
.end annotation


# instance fields
.field next:Lorg/microemu/device/ui/EventDispatcher$Event;

.field private final this$0:Lorg/microemu/device/ui/EventDispatcher;


# direct methods
.method public constructor <init>(Lorg/microemu/device/ui/EventDispatcher;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lorg/microemu/device/ui/EventDispatcher$Event;->this$0:Lorg/microemu/device/ui/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/microemu/device/ui/EventDispatcher$Event;->next:Lorg/microemu/device/ui/EventDispatcher$Event;

    return-void
.end method

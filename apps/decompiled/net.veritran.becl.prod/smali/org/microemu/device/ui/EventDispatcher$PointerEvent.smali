.class public final Lorg/microemu/device/ui/EventDispatcher$PointerEvent;
.super Lorg/microemu/device/ui/EventDispatcher$Event;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/microemu/device/ui/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PointerEvent"
.end annotation


# static fields
.field public static final POINTER_DRAGGED:S = 0x2s

.field public static final POINTER_PRESSED:S = 0x0s

.field public static final POINTER_RELEASED:S = 0x1s


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field private final this$0:Lorg/microemu/device/ui/EventDispatcher;

.field private type:S

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;SII)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "type"    # S
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 225
    iput-object p1, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->this$0:Lorg/microemu/device/ui/EventDispatcher;

    invoke-direct {p0, p1}, Lorg/microemu/device/ui/EventDispatcher$Event;-><init>(Lorg/microemu/device/ui/EventDispatcher;)V

    .line 226
    iput-object p2, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->runnable:Ljava/lang/Runnable;

    .line 227
    iput-short p3, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->type:S

    .line 228
    iput p4, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->x:I

    .line 229
    iput p5, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->y:I

    .line 230
    return-void
.end method

.method static access$000(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)S
    .locals 1
    .param p0, "x0"    # Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .prologue
    .line 209
    iget-short v0, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->type:S

    return v0
.end method

.method static access$100(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)I
    .locals 1
    .param p0, "x0"    # Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .prologue
    .line 209
    iget v0, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->x:I

    return v0
.end method

.method static access$102(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;I)I
    .locals 0
    .param p0, "x0"    # Lorg/microemu/device/ui/EventDispatcher$PointerEvent;
    .param p1, "x1"    # I

    .prologue
    .line 209
    iput p1, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->x:I

    return p1
.end method

.method static access$200(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)I
    .locals 1
    .param p0, "x0"    # Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .prologue
    .line 209
    iget v0, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->y:I

    return v0
.end method

.method static access$202(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;I)I
    .locals 0
    .param p0, "x0"    # Lorg/microemu/device/ui/EventDispatcher$PointerEvent;
    .param p1, "x1"    # I

    .prologue
    .line 209
    iput p1, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->y:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 234
    return-void
.end method

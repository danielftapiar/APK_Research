.class public final Lorg/microemu/device/ui/EventDispatcher$PaintEvent;
.super Lorg/microemu/device/ui/EventDispatcher$Event;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/microemu/device/ui/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PaintEvent"
.end annotation


# instance fields
.field private height:I

.field private final this$0:Lorg/microemu/device/ui/EventDispatcher;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/microemu/device/ui/EventDispatcher;IIII)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, -0x1

    .line 177
    iput-object p1, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->this$0:Lorg/microemu/device/ui/EventDispatcher;

    invoke-direct {p0, p1}, Lorg/microemu/device/ui/EventDispatcher$Event;-><init>(Lorg/microemu/device/ui/EventDispatcher;)V

    .line 175
    iput v0, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    iput v0, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    iput v0, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->width:I

    iput v0, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->height:I

    .line 178
    iput p2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    .line 179
    iput p3, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    .line 180
    iput p4, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->width:I

    .line 181
    iput p5, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->height:I

    .line 182
    return-void
.end method


# virtual methods
.method public final merge(Lorg/microemu/device/ui/EventDispatcher$PaintEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    .prologue
    .line 194
    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    iget v3, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->width:I

    add-int v0, v2, v3

    .line 195
    .local v0, "xMax":I
    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    iget v3, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->height:I

    add-int v1, v2, v3

    .line 197
    .local v1, "yMax":I
    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    iget v3, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    .line 198
    iget v2, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    iget v3, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->width:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 200
    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    iget v3, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    .line 201
    iget v2, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    iget v3, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->height:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 203
    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    sub-int v2, v0, v2

    iput v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->width:I

    .line 204
    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    sub-int v2, v1, v2

    iput v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->height:I

    .line 205
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 185
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    iget v1, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->x:I

    iget v2, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->y:I

    iget v3, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->width:I

    iget v4, p0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->height:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/microemu/device/DeviceDisplay;->repaint(IIII)V

    .line 186
    return-void
.end method

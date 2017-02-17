.class public Ljavax/microedition/lcdui/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Display$RunnableWrapper;,
        Ljavax/microedition/lcdui/Display$AlertTimeout;,
        Ljavax/microedition/lcdui/Display$DisplayAccessor;,
        Ljavax/microedition/lcdui/Display$KeyEvent;,
        Ljavax/microedition/lcdui/Display$TickerPaintTask;,
        Ljavax/microedition/lcdui/Display$GaugePaintTask;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x3

.field public static final CHOICE_GROUP_ELEMENT:I = 0x2

.field public static final COLOR_BACKGROUND:I = 0x0

.field public static final COLOR_BORDER:I = 0x4

.field public static final COLOR_FOREGROUND:I = 0x1

.field public static final COLOR_HIGHLIGHTED_BACKGROUND:I = 0x2

.field public static final COLOR_HIGHLIGHTED_BORDER:I = 0x5

.field public static final COLOR_HIGHLIGHTED_FOREGROUND:I = 0x3

.field public static final LIST_ELEMENT:I = 0x1


# instance fields
.field private accessor:Ljavax/microedition/lcdui/Display$DisplayAccessor;

.field private current:Ljavax/microedition/lcdui/Displayable;

.field private eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

.field private final timer:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v6, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    .line 68
    iput-object v6, p0, Ljavax/microedition/lcdui/Display;->accessor:Ljavax/microedition/lcdui/Display$DisplayAccessor;

    .line 394
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Display;->timer:Ljava/util/Timer;

    .line 418
    new-instance v0, Ljavax/microedition/lcdui/Display$DisplayAccessor;

    invoke-direct {v0, p0, p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Display;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Display;->accessor:Ljavax/microedition/lcdui/Display$DisplayAccessor;

    .line 420
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createEventDispatcher(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    .line 422
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->timer:Ljava/util/Timer;

    new-instance v1, Ljavax/microedition/lcdui/Display$RunnableWrapper;

    new-instance v4, Ljavax/microedition/lcdui/Display$TickerPaintTask;

    invoke-direct {v4, p0, v6}, Ljavax/microedition/lcdui/Display$TickerPaintTask;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Display$1;)V

    invoke-direct {v1, p0, v4}, Ljavax/microedition/lcdui/Display$RunnableWrapper;-><init>(Ljavax/microedition/lcdui/Display;Ljava/lang/Runnable;)V

    sget v4, Ljavax/microedition/lcdui/Ticker;->PAINT_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 423
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->timer:Ljava/util/Timer;

    new-instance v1, Ljavax/microedition/lcdui/Display$RunnableWrapper;

    new-instance v4, Ljavax/microedition/lcdui/Display$GaugePaintTask;

    invoke-direct {v4, p0, v6}, Ljavax/microedition/lcdui/Display$GaugePaintTask;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Display$1;)V

    invoke-direct {v1, p0, v4}, Ljavax/microedition/lcdui/Display$RunnableWrapper;-><init>(Ljavax/microedition/lcdui/Display;Ljava/lang/Runnable;)V

    sget v4, Ljavax/microedition/lcdui/Ticker;->PAINT_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 424
    return-void
.end method

.method static access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 46
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method static access$002(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)Ljavax/microedition/lcdui/Displayable;
    .locals 0
    .param p0, "x0"    # Ljavax/microedition/lcdui/Display;
    .param p1, "x1"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 46
    iput-object p1, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object p1
.end method

.method static access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 46
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    return-object v0
.end method

.method static access$300(Ljavax/microedition/lcdui/Display;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 46
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public static getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;
    .locals 3
    .param p0, "m"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 446
    invoke-static {p0}, Lorg/microemu/MIDletBridge;->getMIDletAccess(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletAccess;

    move-result-object v1

    invoke-virtual {v1}, Lorg/microemu/MIDletAccess;->getDisplayAccess()Lorg/microemu/DisplayAccess;

    move-result-object v1

    if-nez v1, :cond_0

    .line 447
    new-instance v0, Ljavax/microedition/lcdui/Display;

    invoke-direct {v0}, Ljavax/microedition/lcdui/Display;-><init>()V

    .line 448
    .local v0, "result":Ljavax/microedition/lcdui/Display;
    invoke-static {p0}, Lorg/microemu/MIDletBridge;->getMIDletAccess(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletAccess;

    move-result-object v1

    iget-object v2, v0, Ljavax/microedition/lcdui/Display;->accessor:Ljavax/microedition/lcdui/Display$DisplayAccessor;

    invoke-virtual {v1, v2}, Lorg/microemu/MIDletAccess;->setDisplayAccess(Lorg/microemu/DisplayAccess;)V

    .line 453
    :goto_0
    return-object v0

    .line 450
    .end local v0    # "result":Ljavax/microedition/lcdui/Display;
    :cond_0
    invoke-static {p0}, Lorg/microemu/MIDletBridge;->getMIDletAccess(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletAccess;

    move-result-object v1

    invoke-virtual {v1}, Lorg/microemu/MIDletAccess;->getDisplayAccess()Lorg/microemu/DisplayAccess;

    move-result-object v1

    invoke-interface {v1}, Lorg/microemu/DisplayAccess;->getDisplay()Ljavax/microedition/lcdui/Display;

    move-result-object v0

    .restart local v0    # "result":Ljavax/microedition/lcdui/Display;
    goto :goto_0
.end method

.method static getGameAction(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 577
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/microemu/device/InputMethod;->getGameAction(I)I

    move-result v0

    return v0
.end method

.method static getKeyCode(I)I
    .locals 1
    .param p0, "gameAction"    # I

    .prologue
    .line 581
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/microemu/device/InputMethod;->getKeyCode(I)I

    move-result v0

    return v0
.end method

.method static getKeyName(I)Ljava/lang/String;
    .locals 1
    .param p0, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/microemu/device/InputMethod;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callSerially(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 427
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    invoke-virtual {v0, p1}, Lorg/microemu/device/ui/EventDispatcher;->put(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method clearAlert()V
    .locals 1

    .prologue
    .line 573
    sget-object v0, Ljavax/microedition/lcdui/Alert;->nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 574
    return-void
.end method

.method public flashBacklight(I)Z
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getBestImageHeight(I)I
    .locals 1
    .param p1, "imageType"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getBestImageWidth(I)I
    .locals 1
    .param p1, "imageType"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getBorderStyle(Z)I
    .locals 1
    .param p1, "highlighted"    # Z

    .prologue
    .line 470
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "colorSpecifier"    # I

    .prologue
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 464
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 462
    :pswitch_1
    const v0, 0xffffff

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrent()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public isColor()Z
    .locals 1

    .prologue
    .line 489
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->isColor()Z

    move-result v0

    return v0
.end method

.method isShown(Ljavax/microedition/lcdui/Displayable;)Z
    .locals 1
    .param p1, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 589
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-eq v0, p1, :cond_1

    .line 590
    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public numAlphaLevels()I
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->numAlphaLevels()I

    move-result v0

    return v0
.end method

.method public numColors()I
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->numColors()I

    move-result v0

    return v0
.end method

.method repaint(Ljavax/microedition/lcdui/Displayable;IIII)V
    .locals 7
    .param p1, "d"    # Ljavax/microedition/lcdui/Displayable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 597
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-ne v0, p1, :cond_0

    .line 598
    iget-object v6, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    new-instance v0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;IIII)V

    invoke-virtual {v6, v0}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 600
    :cond_0
    return-void
.end method

.method serviceRepaints()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 609
    const-string v0, "event-thread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Displayable;->getWidth()I

    move-result v1

    iget-object v2, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Displayable;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/microemu/device/DeviceDisplay;->repaint(IIII)V

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    invoke-virtual {v0}, Lorg/microemu/device/ui/EventDispatcher;->serviceRepaints()V

    goto :goto_0
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Displayable;)V
    .locals 2
    .param p1, "alert"    # Ljavax/microedition/lcdui/Alert;
    .param p2, "nextDisplayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alert"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    if-nez p2, :cond_1

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nextDisplayable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    instance-of v0, p2, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_2

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nextDisplayable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_2
    sput-object p2, Ljavax/microedition/lcdui/Alert;->nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    .line 560
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 561
    return-void
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 4
    .param p1, "nextDisplayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 493
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-ne p1, v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    new-instance v1, Lorg/microemu/device/ui/EventDispatcher$ShowNotifyEvent;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display;->eventDispatcher:Lorg/microemu/device/ui/EventDispatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljavax/microedition/lcdui/Display$1;

    invoke-direct {v3, p0, p1}, Ljavax/microedition/lcdui/Display$1;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)V

    invoke-direct {v1, v2, v3}, Lorg/microemu/device/ui/EventDispatcher$ShowNotifyEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    goto :goto_0
.end method

.method public setCurrentItem(Ljavax/microedition/lcdui/Item;)V
    .locals 0
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 565
    return-void
.end method

.method setScrollDown(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 618
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/microemu/device/DeviceDisplay;->setScrollDown(Z)V

    .line 619
    return-void
.end method

.method setScrollUp(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 622
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/microemu/device/DeviceDisplay;->setScrollUp(Z)V

    .line 623
    return-void
.end method

.method public vibrate(I)Z
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 568
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/microemu/device/Device;->vibrate(I)Z

    move-result v0

    return v0
.end method

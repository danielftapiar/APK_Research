.class Ljavax/microedition/lcdui/Display$DisplayAccessor;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Lorg/microemu/DisplayAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayAccessor"
.end annotation


# instance fields
.field display:Ljavax/microedition/lcdui/Display;

.field private final this$0:Ljavax/microedition/lcdui/Display;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Display;)V
    .locals 0
    .param p2, "d"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 175
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->display:Ljavax/microedition/lcdui/Display;

    .line 178
    return-void
.end method

.method static access$200(Ljavax/microedition/lcdui/Display$DisplayAccessor;)Ljavax/microedition/lcdui/Display;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Display$DisplayAccessor;

    .prologue
    .line 171
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    return-object v0
.end method

.method private processGameCanvasKeyEvent(Ljavax/microedition/lcdui/game/GameCanvas;IZ)V
    .locals 7
    .param p1, "c"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p2, "k"    # I
    .param p3, "press"    # Z

    .prologue
    .line 213
    invoke-static {p1}, Lorg/microemu/MIDletBridge;->getGameCanvasKeyAccess(Ljavax/microedition/lcdui/game/GameCanvas;)Lorg/microemu/GameCanvasKeyAccess;

    move-result-object v0

    .line 214
    .local v0, "access":Lorg/microemu/GameCanvasKeyAccess;
    invoke-virtual {p1, p2}, Ljavax/microedition/lcdui/game/GameCanvas;->getGameAction(I)I

    move-result v1

    .line 215
    .local v1, "gameCode":I
    const/4 v2, 0x0

    .line 216
    .local v2, "suppress":Z
    if-eqz v1, :cond_0

    .line 218
    if-eqz p3, :cond_2

    .line 219
    invoke-interface {v0, p1, v1}, Lorg/microemu/GameCanvasKeyAccess;->recordKeyPressed(Ljavax/microedition/lcdui/game/GameCanvas;I)V

    .line 222
    :goto_0
    invoke-interface {v0, p1}, Lorg/microemu/GameCanvasKeyAccess;->suppressedKeyEvents(Ljavax/microedition/lcdui/game/GameCanvas;)Z

    move-result v2

    .line 224
    :cond_0
    if-nez v2, :cond_1

    .line 225
    if-eqz p3, :cond_3

    .line 226
    iget-object v3, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v3}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v3

    new-instance v4, Ljavax/microedition/lcdui/Display$KeyEvent;

    iget-object v5, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p2}, Ljavax/microedition/lcdui/Display$KeyEvent;-><init>(Ljavax/microedition/lcdui/Display;SI)V

    invoke-virtual {v3, v4}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 231
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    invoke-interface {v0, p1, v1}, Lorg/microemu/GameCanvasKeyAccess;->recordKeyReleased(Ljavax/microedition/lcdui/game/GameCanvas;I)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v3, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v3}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v3

    new-instance v4, Ljavax/microedition/lcdui/Display$KeyEvent;

    iget-object v5, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, p2}, Ljavax/microedition/lcdui/Display$KeyEvent;-><init>(Ljavax/microedition/lcdui/Display;SI)V

    invoke-virtual {v3, v4}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    goto :goto_1
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->hideNotify()V

    .line 374
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/microemu/device/ui/EventDispatcher;->cancel()V

    .line 375
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$300(Ljavax/microedition/lcdui/Display;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 376
    return-void
.end method

.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 3
    .param p1, "c"    # Ljavax/microedition/lcdui/Command;
    .param p2, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 181
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->isRegularCommand()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    if-nez p2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Displayable;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v1

    .line 186
    .local v1, "listener":Ljavax/microedition/lcdui/CommandListener;
    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v1, p1, p2}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 192
    .end local v1    # "listener":Ljavax/microedition/lcdui/CommandListener;
    :cond_2
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getFocusedItem()Ljavax/microedition/lcdui/Item;

    move-result-object v0

    .line 194
    .local v0, "item":Ljavax/microedition/lcdui/Item;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Item;->getItemCommandListener()Ljavax/microedition/lcdui/ItemCommandListener;

    move-result-object v1

    .line 195
    .local v1, "listener":Ljavax/microedition/lcdui/ItemCommandListener;
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getOriginalCommand()Ljavax/microedition/lcdui/Command;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljavax/microedition/lcdui/ItemCommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Item;)V

    goto :goto_0
.end method

.method public getCurrent()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getDisplay()Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUI()Lorg/microemu/device/ui/DisplayableUI;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    .line 316
    .local v0, "current":Ljavax/microedition/lcdui/Displayable;
    if-nez v0, :cond_0

    .line 317
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    goto :goto_0
.end method

.method public getDisplay()Ljavax/microedition/lcdui/Display;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->display:Ljavax/microedition/lcdui/Display;

    return-object v0
.end method

.method public hideNotify()V
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    .line 335
    .local v0, "current":Ljavax/microedition/lcdui/Displayable;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->hideNotify()V

    .line 338
    :cond_0
    return-void
.end method

.method public isFullScreenMode()Z
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    .line 326
    .local v0, "current":Ljavax/microedition/lcdui/Displayable;
    instance-of v1, v0, Ljavax/microedition/lcdui/Canvas;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Ljavax/microedition/lcdui/Canvas;

    .end local v0    # "current":Ljavax/microedition/lcdui/Displayable;
    iget-boolean v1, v0, Ljavax/microedition/lcdui/Canvas;->fullScreenMode:Z

    .line 329
    :goto_0
    return v1

    .restart local v0    # "current":Ljavax/microedition/lcdui/Displayable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyPressed(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 239
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    instance-of v0, v0, Ljavax/microedition/lcdui/game/GameCanvas;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/game/GameCanvas;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->processGameCanvasKeyEvent(Ljavax/microedition/lcdui/game/GameCanvas;IZ)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Display$KeyEvent;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Ljavax/microedition/lcdui/Display$KeyEvent;-><init>(Ljavax/microedition/lcdui/Display;SI)V

    invoke-virtual {v0, v1}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    goto :goto_0
.end method

.method public keyReleased(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 252
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    instance-of v0, v0, Ljavax/microedition/lcdui/game/GameCanvas;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/game/GameCanvas;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->processGameCanvasKeyEvent(Ljavax/microedition/lcdui/game/GameCanvas;IZ)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Display$KeyEvent;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Ljavax/microedition/lcdui/Display$KeyEvent;-><init>(Ljavax/microedition/lcdui/Display;SI)V

    invoke-virtual {v0, v1}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    goto :goto_0
.end method

.method public keyRepeated(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 247
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Display$KeyEvent;

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Ljavax/microedition/lcdui/Display$KeyEvent;-><init>(Ljavax/microedition/lcdui/Display;SI)V

    invoke-virtual {v0, v1}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 248
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 300
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/microedition/lcdui/Displayable;->paint(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getTranslateX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getTranslateY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 308
    :cond_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public pointerDragged(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 286
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v6

    new-instance v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;

    invoke-direct {v2, p0, p1, p2}, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;-><init>(Ljavax/microedition/lcdui/Display$DisplayAccessor;II)V

    const/4 v3, 0x2

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;SII)V

    invoke-virtual {v6, v0}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 296
    :cond_0
    return-void
.end method

.method public pointerPressed(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 260
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v6

    new-instance v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljavax/microedition/lcdui/Display$DisplayAccessor$1;

    invoke-direct {v2, p0, p1, p2}, Ljavax/microedition/lcdui/Display$DisplayAccessor$1;-><init>(Ljavax/microedition/lcdui/Display$DisplayAccessor;II)V

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;SII)V

    invoke-virtual {v6, v0}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 270
    :cond_0
    return-void
.end method

.method public pointerReleased(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 273
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v6

    new-instance v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljavax/microedition/lcdui/Display$DisplayAccessor$2;

    invoke-direct {v2, p0, p1, p2}, Ljavax/microedition/lcdui/Display$DisplayAccessor$2;-><init>(Ljavax/microedition/lcdui/Display$DisplayAccessor;II)V

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;SII)V

    invoke-virtual {v6, v0}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 283
    :cond_0
    return-void
.end method

.method public repaint()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    .line 365
    .local v1, "d":Ljavax/microedition/lcdui/Displayable;
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getDisplay()Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Displayable;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Displayable;->getHeight()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/Display;->repaint(Ljavax/microedition/lcdui/Displayable;IIII)V

    .line 368
    :cond_0
    return-void
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 1
    .param p1, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 348
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getDisplay()Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 349
    return-void
.end method

.method public showNotify()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    .line 342
    .local v0, "current":Ljavax/microedition/lcdui/Displayable;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->showNotify()V

    .line 345
    :cond_0
    return-void
.end method

.method public sizeChanged()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 352
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    instance-of v1, v1, Ljavax/microedition/lcdui/game/GameCanvas;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    iput v2, v1, Ljavax/microedition/lcdui/Displayable;->width:I

    .line 355
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    iput v2, v1, Ljavax/microedition/lcdui/Displayable;->height:I

    .line 356
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v1}, Lorg/microemu/MIDletBridge;->getGameCanvasKeyAccess(Ljavax/microedition/lcdui/game/GameCanvas;)Lorg/microemu/GameCanvasKeyAccess;

    move-result-object v0

    .line 357
    .local v0, "access":Lorg/microemu/GameCanvasKeyAccess;
    invoke-interface {v0}, Lorg/microemu/GameCanvasKeyAccess;->initBuffer()V

    .line 359
    .end local v0    # "access":Lorg/microemu/GameCanvasKeyAccess;
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    iget-object v2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Displayable;->sizeChanged(Ljavax/microedition/lcdui/Display;)V

    .line 361
    :cond_1
    return-void
.end method

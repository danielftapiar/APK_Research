.class public abstract Ljavax/microedition/lcdui/Displayable;
.super Ljava/lang/Object;
.source "Displayable.java"


# instance fields
.field currentDisplay:Ljavax/microedition/lcdui/Display;

.field device:Lorg/microemu/device/Device;

.field fullScreenMode:Z

.field height:I

.field private listener:Ljavax/microedition/lcdui/CommandListener;

.field ticker:Ljavax/microedition/lcdui/Ticker;

.field private title:Ljava/lang/String;

.field ui:Lorg/microemu/device/ui/DisplayableUI;

.field viewPortHeight:I

.field viewPortY:I

.field width:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    .line 59
    iput-object v0, p0, Ljavax/microedition/lcdui/Displayable;->listener:Ljavax/microedition/lcdui/CommandListener;

    .line 64
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    .line 65
    iput v1, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    .line 66
    iput v1, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/microedition/lcdui/Displayable;->fullScreenMode:Z

    .line 68
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->title:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private updateWidthAndHeight()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Ljavax/microedition/lcdui/Displayable;->fullScreenMode:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->getFullWidth()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    .line 288
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->getFullHeight()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->getWidth()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    .line 291
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->getHeight()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    goto :goto_0
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 2
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    iget-object v1, p1, Ljavax/microedition/lcdui/Command;->ui:Lorg/microemu/device/ui/CommandUI;

    invoke-interface {v0, v1}, Lorg/microemu/device/ui/DisplayableUI;->addCommandUI(Lorg/microemu/device/ui/CommandUI;)V

    .line 79
    return-void
.end method

.method getCommandListener()Ljavax/microedition/lcdui/CommandListener;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->listener:Ljavax/microedition/lcdui/CommandListener;

    return-object v0
.end method

.method getCommands()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 163
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 164
    .local v2, "result":Ljava/util/Vector;
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-interface {v3}, Lorg/microemu/device/ui/DisplayableUI;->getCommandsUI()Ljava/util/Vector;

    move-result-object v0

    .line 165
    .local v0, "commandsUI":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/microemu/device/ui/CommandUI;

    invoke-interface {v3}, Lorg/microemu/device/ui/CommandUI;->getCommand()Ljavax/microedition/lcdui/Command;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v2
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;->updateWidthAndHeight()V

    .line 104
    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    return v0
.end method

.method public getTicker()Ljavax/microedition/lcdui/Ticker;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->ticker:Ljavax/microedition/lcdui/Ticker;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;->updateWidthAndHeight()V

    .line 94
    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    return v0
.end method

.method hideNotify()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method final hideNotify(Ljavax/microedition/lcdui/Display;)V
    .locals 1
    .param p1, "d"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 180
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/DisplayableUI;->hideNotify()V

    .line 182
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->hideNotify()V

    .line 183
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Display;->isShown(Ljavax/microedition/lcdui/Displayable;)Z

    move-result v0

    goto :goto_0
.end method

.method keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 188
    return-void
.end method

.method keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 198
    return-void
.end method

.method keyRepeated(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 193
    return-void
.end method

.method abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method pointerDragged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 213
    return-void
.end method

.method pointerPressed(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 203
    return-void
.end method

.method pointerReleased(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 208
    return-void
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 2
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 84
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    iget-object v1, p1, Ljavax/microedition/lcdui/Command;->ui:Lorg/microemu/device/ui/CommandUI;

    invoke-interface {v0, v1}, Lorg/microemu/device/ui/DisplayableUI;->removeCommandUI(Lorg/microemu/device/ui/CommandUI;)V

    .line 85
    return-void
.end method

.method repaint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Displayable;->repaint(IIII)V

    .line 224
    :cond_0
    return-void
.end method

.method repaint(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 229
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/Display;->repaint(Ljavax/microedition/lcdui/Displayable;IIII)V

    .line 232
    :cond_0
    return-void
.end method

.method public setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/microedition/lcdui/CommandListener;

    .prologue
    .line 148
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->listener:Ljavax/microedition/lcdui/CommandListener;

    .line 150
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/DisplayableUI;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 151
    return-void
.end method

.method public setTicker(Ljavax/microedition/lcdui/Ticker;)V
    .locals 0
    .param p1, "ticker"    # Ljavax/microedition/lcdui/Ticker;

    .prologue
    .line 125
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->ticker:Ljavax/microedition/lcdui/Ticker;

    .line 127
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->repaint()V

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->title:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/DisplayableUI;->invalidate()V

    .line 143
    return-void
.end method

.method setUI(Lorg/microemu/device/ui/DisplayableUI;)V
    .locals 0
    .param p1, "ui"    # Lorg/microemu/device/ui/DisplayableUI;

    .prologue
    .line 73
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    .line 74
    return-void
.end method

.method showNotify()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method final showNotify(Ljavax/microedition/lcdui/Display;)V
    .locals 5
    .param p1, "d"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 253
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    .line 254
    const/4 v3, 0x0

    iput v3, p0, Ljavax/microedition/lcdui/Displayable;->viewPortY:I

    .line 256
    new-instance v1, Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "title":Ljavax/microedition/lcdui/StringComponent;
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljavax/microedition/lcdui/Displayable;->viewPortHeight:I

    .line 258
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->ticker:Ljavax/microedition/lcdui/Ticker;

    if-eqz v3, :cond_0

    .line 259
    iget v3, p0, Ljavax/microedition/lcdui/Displayable;->viewPortHeight:I

    iget-object v4, p0, Ljavax/microedition/lcdui/Displayable;->ticker:Ljavax/microedition/lcdui/Ticker;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Ticker;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Ljavax/microedition/lcdui/Displayable;->viewPortHeight:I

    .line 264
    :cond_0
    iget-boolean v3, p0, Ljavax/microedition/lcdui/Displayable;->fullScreenMode:Z

    if-eqz v3, :cond_3

    .line 265
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v3}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v3

    invoke-interface {v3}, Lorg/microemu/device/DeviceDisplay;->getFullWidth()I

    move-result v2

    .line 269
    .local v2, "w":I
    :goto_0
    iget-boolean v3, p0, Ljavax/microedition/lcdui/Displayable;->fullScreenMode:Z

    if-eqz v3, :cond_4

    .line 270
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v3}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v3

    invoke-interface {v3}, Lorg/microemu/device/DeviceDisplay;->getFullHeight()I

    move-result v0

    .line 275
    .local v0, "h":I
    :goto_1
    iget v3, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    if-eq v3, v0, :cond_2

    .line 276
    :cond_1
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Displayable;->sizeChanged(Ljavax/microedition/lcdui/Display;)V

    .line 279
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->showNotify()V

    .line 281
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-interface {v3}, Lorg/microemu/device/ui/DisplayableUI;->showNotify()V

    .line 282
    return-void

    .line 267
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_3
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v3}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v3

    invoke-interface {v3}, Lorg/microemu/device/DeviceDisplay;->getWidth()I

    move-result v2

    .restart local v2    # "w":I
    goto :goto_0

    .line 272
    :cond_4
    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable;->device:Lorg/microemu/device/Device;

    invoke-interface {v3}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v3

    invoke-interface {v3}, Lorg/microemu/device/DeviceDisplay;->getHeight()I

    move-result v0

    .restart local v0    # "h":I
    goto :goto_1
.end method

.method protected sizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 236
    return-void
.end method

.method final sizeChanged(Ljavax/microedition/lcdui/Display;)V
    .locals 2
    .param p1, "d"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 241
    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;->updateWidthAndHeight()V

    .line 242
    iget v0, p0, Ljavax/microedition/lcdui/Displayable;->width:I

    iget v1, p0, Ljavax/microedition/lcdui/Displayable;->height:I

    invoke-virtual {p0, v0, v1}, Ljavax/microedition/lcdui/Displayable;->sizeChanged(II)V

    .line 243
    return-void
.end method

.class public Ljavax/microedition/lcdui/Gauge;
.super Ljavax/microedition/lcdui/Item;
.source "Gauge.java"


# static fields
.field public static final CONTINUOUS_IDLE:I = 0x0

.field public static final CONTINUOUS_RUNNING:I = 0x2

.field static HEIGHT:I = 0x0

.field private static final IDEFINITE_FRAMES:I = 0x4

.field public static final INCREMENTAL_IDLE:I = 0x1

.field public static final INCREMENTAL_UPDATING:I = 0x3

.field public static final INDEFINITE:I = -0x1

.field static PAINT_TIMEOUT:I


# instance fields
.field private indefiniteFrame:I

.field interactive:Z

.field maxValue:I

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xf

    sput v0, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    .line 56
    const/16 v0, 0x1f4

    sput v0, Ljavax/microedition/lcdui/Gauge;->PAINT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "interactive"    # Z
    .param p3, "maxValue"    # I
    .param p4, "initialValue"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createGaugeUI(Ljavax/microedition/lcdui/Gauge;)Lorg/microemu/device/ui/GaugeUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 62
    iput-boolean p2, p0, Ljavax/microedition/lcdui/Gauge;->interactive:Z

    .line 64
    invoke-virtual {p0, p3}, Ljavax/microedition/lcdui/Gauge;->setMaxValue(I)V

    .line 65
    invoke-virtual {p0, p4}, Ljavax/microedition/lcdui/Gauge;->setValue(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 282
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    instance-of v0, v0, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->addCommand(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    sget v1, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    return v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidGaugeUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/GaugeUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/GaugeUI;->getValue()I

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    goto :goto_0
.end method

.method hasIndefiniteRange()Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getMaxValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFocusable()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Ljavax/microedition/lcdui/Gauge;->interactive:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Ljavax/microedition/lcdui/Gauge;->interactive:Z

    return v0
.end method

.method keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 188
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getGameAction(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    if-lez v0, :cond_1

    .line 189
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 190
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->repaint()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getGameAction(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    iget v1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    if-ge v0, v1, :cond_0

    .line 192
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 193
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->repaint()V

    goto :goto_0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 200
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 202
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 204
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    sget v4, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p1, v7, v7, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->hasIndefiniteRange()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 210
    :cond_1
    iget-object v3, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v3

    add-int/lit8 v1, v3, -0x9

    .line 211
    .local v1, "width":I
    sget v3, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    add-int/lit8 v3, v3, -0x9

    invoke-virtual {p1, v5, v5, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 231
    :cond_2
    :goto_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1, v6, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 232
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getHeight()I

    move-result v3

    return v3

    .line 213
    .end local v1    # "width":I
    :cond_3
    iget-object v3, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    shl-int/lit8 v3, v3, 0x1

    div-int/lit8 v1, v3, 0x4

    .line 214
    .restart local v1    # "width":I
    ushr-int/lit8 v3, v1, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/Gauge;->indefiniteFrame:I

    mul-int v0, v3, v4

    .line 215
    .local v0, "offset":I
    const/4 v2, 0x0

    .line 216
    .local v2, "width2":I
    add-int v3, v0, v1

    iget-object v4, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    if-le v3, v4, :cond_4

    .line 217
    add-int v3, v0, v1

    iget-object v4, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    sub-int v2, v3, v4

    .line 218
    sub-int/2addr v1, v2

    .line 221
    :cond_4
    add-int/lit8 v3, v0, 0x4

    sget v4, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {p1, v3, v5, v1, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 222
    if-eqz v2, :cond_2

    .line 223
    sget v3, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p1, v5, v5, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    .line 227
    .end local v0    # "offset":I
    .end local v1    # "width":I
    .end local v2    # "width2":I
    :cond_5
    iget-object v3, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    iget v4, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    mul-int/2addr v3, v4

    iget v4, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    div-int v1, v3, v4

    .line 228
    .restart local v1    # "width":I
    sget v3, Ljavax/microedition/lcdui/Gauge;->HEIGHT:I

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p1, v5, v5, v1, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0
.end method

.method public setDefaultCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 289
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    instance-of v0, v0, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setDefaultCommand(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0
.end method

.method public setItemCommandListener(Ljavax/microedition/lcdui/ItemCommandListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/microedition/lcdui/ItemCommandListener;

    .prologue
    .line 296
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    instance-of v0, v0, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setItemCommandListener(Ljavax/microedition/lcdui/ItemCommandListener;)V

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    instance-of v0, v0, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLayout(I)V
    .locals 1
    .param p1, "layout"    # I

    .prologue
    .line 268
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->owner:Ljavax/microedition/lcdui/Screen;

    instance-of v0, v0, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLayout(I)V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    const/4 v2, -0x1

    .line 115
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidGaugeUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/GaugeUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/GaugeUI;->setMaxValue(I)V

    .line 119
    :cond_0
    if-lez p1, :cond_2

    .line 120
    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 121
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Gauge;->setValue(I)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_3
    if-eq p1, v2, :cond_4

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 131
    :cond_4
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    if-eq v0, v2, :cond_1

    .line 134
    iput v2, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 136
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->repaint()V

    goto :goto_0
.end method

.method public setPreferredSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v0

    .line 261
    .local v0, "owner":Ljavax/microedition/lcdui/Screen;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljavax/microedition/lcdui/Alert;

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/microedition/lcdui/Item;->setPreferredSize(II)V

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x3

    .line 70
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidGaugeUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/GaugeUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/GaugeUI;->setValue(I)V

    .line 102
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->hasIndefiniteRange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_1
    if-ne p1, v2, :cond_2

    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    if-ne v0, v2, :cond_2

    .line 84
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->updateIndefiniteFrame()V

    goto :goto_0

    .line 86
    :cond_2
    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 87
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->repaint()V

    goto :goto_0

    .line 91
    :cond_3
    if-gez p1, :cond_4

    .line 92
    const/4 p1, 0x0

    .line 94
    :cond_4
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    if-le p1, v0, :cond_5

    .line 95
    iget p1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 98
    :cond_5
    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 99
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->repaint()V

    goto :goto_0
.end method

.method traverse(IIIZ)I
    .locals 2
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    const v0, 0x7fffffff

    .line 238
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 239
    if-lez p2, :cond_0

    .line 240
    neg-int v0, p2

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 246
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 247
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateIndefiniteFrame()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->hasIndefiniteRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->indefiniteFrame:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 166
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->indefiniteFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/microedition/lcdui/Gauge;->indefiniteFrame:I

    .line 169
    :goto_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->repaint()V

    .line 171
    :cond_1
    return-void

    .line 168
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/Gauge;->indefiniteFrame:I

    goto :goto_0
.end method

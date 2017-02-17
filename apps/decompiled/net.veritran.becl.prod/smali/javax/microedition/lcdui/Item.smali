.class public abstract Ljavax/microedition/lcdui/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field public static final BUTTON:I = 0x2

.field public static final HYPERLINK:I = 0x1

.field public static final LAYOUT_2:I = 0x4000

.field public static final LAYOUT_BOTTOM:I = 0x20

.field public static final LAYOUT_CENTER:I = 0x3

.field public static final LAYOUT_DEFAULT:I = 0x0

.field public static final LAYOUT_EXPAND:I = 0x800

.field public static final LAYOUT_LEFT:I = 0x1

.field public static final LAYOUT_NEWLINE_AFTER:I = 0x200

.field public static final LAYOUT_NEWLINE_BEFORE:I = 0x100

.field public static final LAYOUT_RIGHT:I = 0x2

.field public static final LAYOUT_SHRINK:I = 0x400

.field public static final LAYOUT_TOP:I = 0x10

.field public static final LAYOUT_VCENTER:I = 0x30

.field public static final LAYOUT_VEXPAND:I = 0x2000

.field public static final LAYOUT_VSHRINK:I = 0x1000

.field static final OUTOFITEM:I = 0x7fffffff

.field public static final PLAIN:I


# instance fields
.field commandListener:Ljavax/microedition/lcdui/ItemCommandListener;

.field commands:Ljava/util/Vector;

.field defaultCommand:Ljavax/microedition/lcdui/Command;

.field private focus:Z

.field labelComponent:Ljavax/microedition/lcdui/StringComponent;

.field layout:I

.field owner:Ljavax/microedition/lcdui/Screen;

.field prefHeight:I

.field prefWidth:I

.field ui:Lorg/microemu/device/ui/ItemUI;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/microedition/lcdui/Item;->focus:Z

    .line 80
    new-instance v0, Ljavax/microedition/lcdui/StringComponent;

    invoke-direct {v0, p1}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    .line 82
    invoke-virtual {p0, v1, v1}, Ljavax/microedition/lcdui/Item;->setPreferredSize(II)V

    .line 83
    return-void
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 93
    :cond_0
    iget-object v2, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "inserted":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 98
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v3

    iget-object v2, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/microedition/lcdui/Command;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 99
    iget-object v2, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 100
    const/4 v1, 0x1

    .line 104
    :cond_1
    if-nez v1, :cond_2

    .line 106
    iget-object v2, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 108
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaintOwner()V

    .line 111
    .end local v0    # "i":I
    .end local v1    # "inserted":Z
    :cond_3
    return-void

    .line 97
    .restart local v0    # "i":I
    .restart local v1    # "inserted":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v0

    return v0
.end method

.method getItemCommandListener()Ljavax/microedition/lcdui/ItemCommandListener;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->commandListener:Ljavax/microedition/lcdui/ItemCommandListener;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Ljavax/microedition/lcdui/Item;->layout:I

    return v0
.end method

.method getMaximumHeight()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Screen;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method getMaximumWidth()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/DeviceDisplay;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getMaximumWidth()I

    move-result v0

    return v0
.end method

.method getOwner()Ljavax/microedition/lcdui/Screen;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    return-object v0
.end method

.method public getPreferredHeight()I
    .locals 4

    .prologue
    .line 134
    iget v2, p0, Ljavax/microedition/lcdui/Item;->prefHeight:I

    .line 135
    .local v2, "ret":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getMinimumHeight()I

    move-result v1

    .line 136
    .local v1, "min":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getMaximumHeight()I

    move-result v0

    .line 138
    .local v0, "max":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 145
    .end local v1    # "min":I
    :goto_0
    return v1

    .line 141
    .restart local v1    # "min":I
    :cond_0
    if-ge v2, v1, :cond_2

    .line 142
    move v2, v1

    :cond_1
    :goto_1
    move v1, v2

    .line 145
    goto :goto_0

    .line 143
    :cond_2
    if-le v2, v0, :cond_1

    .line 144
    move v2, v0

    goto :goto_1
.end method

.method public getPreferredWidth()I
    .locals 4

    .prologue
    .line 149
    iget v2, p0, Ljavax/microedition/lcdui/Item;->prefWidth:I

    .line 150
    .local v2, "ret":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getMinimumWidth()I

    move-result v1

    .line 151
    .local v1, "min":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getMaximumWidth()I

    move-result v0

    .line 153
    .local v0, "max":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 160
    .end local v0    # "max":I
    :goto_0
    return v0

    .line 156
    .restart local v0    # "max":I
    :cond_0
    if-ge v2, v1, :cond_2

    .line 157
    move v2, v1

    :cond_1
    :goto_1
    move v0, v2

    .line 160
    goto :goto_0

    .line 158
    :cond_2
    if-le v2, v0, :cond_1

    .line 159
    move v2, v0

    goto :goto_1
.end method

.method hasFocus()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Ljavax/microedition/lcdui/Item;->focus:Z

    return v0
.end method

.method isFocusable()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 257
    return-void
.end method

.method public notifyStateChanged()V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v1

    .line 165
    .local v1, "owner":Ljavax/microedition/lcdui/Screen;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljavax/microedition/lcdui/Form;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 166
    check-cast v0, Ljavax/microedition/lcdui/Form;

    .line 167
    .local v0, "form":Ljavax/microedition/lcdui/Form;
    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Form;->fireItemStateListener(Ljavax/microedition/lcdui/Item;)V

    .line 170
    .end local v0    # "form":Ljavax/microedition/lcdui/Form;
    :cond_0
    return-void
.end method

.method abstract paint(Ljavax/microedition/lcdui/Graphics;)I
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 265
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->paint(Ljavax/microedition/lcdui/Graphics;)I

    .line 266
    return-void
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 173
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->defaultCommand:Ljavax/microedition/lcdui/Command;

    if-ne v0, p1, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Item;->defaultCommand:Ljavax/microedition/lcdui/Command;

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaintOwner()V

    .line 177
    return-void
.end method

.method repaint()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Screen;->repaint()V

    .line 274
    :cond_0
    return-void
.end method

.method repaintOwner()V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v0

    .line 239
    .local v0, "owner":Ljavax/microedition/lcdui/Screen;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Screen;->repaint()V

    .line 241
    :cond_0
    return-void
.end method

.method select()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->defaultCommand:Ljavax/microedition/lcdui/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->commandListener:Ljavax/microedition/lcdui/ItemCommandListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->commandListener:Ljavax/microedition/lcdui/ItemCommandListener;

    iget-object v1, p0, Ljavax/microedition/lcdui/Item;->defaultCommand:Ljavax/microedition/lcdui/Command;

    invoke-interface {v0, v1, p0}, Ljavax/microedition/lcdui/ItemCommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Item;)V

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 180
    iput-object p1, p0, Ljavax/microedition/lcdui/Item;->defaultCommand:Ljavax/microedition/lcdui/Command;

    .line 181
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Item;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaintOwner()V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaintOwner()V

    goto :goto_0
.end method

.method setFocus(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Ljavax/microedition/lcdui/Item;->focus:Z

    .line 286
    return-void
.end method

.method public setItemCommandListener(Ljavax/microedition/lcdui/ItemCommandListener;)V
    .locals 0
    .param p1, "l"    # Ljavax/microedition/lcdui/ItemCommandListener;

    .prologue
    .line 194
    iput-object p1, p0, Ljavax/microedition/lcdui/Item;->commandListener:Ljavax/microedition/lcdui/ItemCommandListener;

    .line 195
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ItemUI;->setLabel(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->labelComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaint()V

    .line 203
    return-void
.end method

.method public setLayout(I)V
    .locals 2
    .param p1, "layout"    # I

    .prologue
    .line 213
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x800

    if-nez v0, :cond_1

    :cond_0
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_2

    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_2

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combination of layout policies"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    iput p1, p0, Ljavax/microedition/lcdui/Item;->layout:I

    .line 220
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaint()V

    .line 221
    return-void
.end method

.method setOwner(Ljavax/microedition/lcdui/Screen;)V
    .locals 1
    .param p1, "owner"    # Ljavax/microedition/lcdui/Screen;

    .prologue
    .line 297
    iput-object p1, p0, Ljavax/microedition/lcdui/Item;->owner:Ljavax/microedition/lcdui/Screen;

    .line 299
    if-nez p1, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public setPreferredSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, -0x1

    .line 224
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 227
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/Item;->prefWidth:I

    .line 228
    iput p2, p0, Ljavax/microedition/lcdui/Item;->prefHeight:I

    .line 229
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Item;->repaint()V

    .line 230
    return-void
.end method

.method setUI(Lorg/microemu/device/ui/ItemUI;)V
    .locals 0
    .param p1, "ui"    # Lorg/microemu/device/ui/ItemUI;

    .prologue
    .line 86
    iput-object p1, p0, Ljavax/microedition/lcdui/Item;->ui:Lorg/microemu/device/ui/ItemUI;

    .line 87
    return-void
.end method

.method traverse(IIIZ)I
    .locals 1
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.class public Ljavax/microedition/lcdui/Form;
.super Ljavax/microedition/lcdui/Screen;
.source "Form.java"


# instance fields
.field focusItemIndex:I

.field items:[Ljavax/microedition/lcdui/Item;

.field numOfItems:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Screen;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/microedition/lcdui/Item;

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    .line 41
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createFormUI(Ljavax/microedition/lcdui/Form;)Lorg/microemu/device/ui/FormUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->setUI(Lorg/microemu/device/ui/DisplayableUI;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/microedition/lcdui/Item;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "items"    # [Ljavax/microedition/lcdui/Item;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 53
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Form;->append(Ljavax/microedition/lcdui/Item;)I

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getBottomVisibleIndex(I)I
    .locals 3
    .param p1, "bottom"    # I

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-ge v1, v2, :cond_1

    .line 469
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    if-le v0, p1, :cond_0

    .line 475
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 468
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_1
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method

.method private getHeightToItem(I)I
    .locals 3
    .param p1, "itemIndex"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 484
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_0
    return v0
.end method

.method private getTopVisibleIndex(I)I
    .locals 3
    .param p1, "top"    # I

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-ge v1, v2, :cond_1

    .line 454
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 455
    if-lt v0, p1, :cond_0

    .line 460
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 453
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_1
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method

.method private verifyItem(Ljavax/microedition/lcdui/Item;)V
    .locals 2
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Item;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "item is already owned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1
    invoke-virtual {p1, p0}, Ljavax/microedition/lcdui/Item;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 509
    return-void
.end method

.method private verifyItemNum(I)V
    .locals 2
    .param p1, "itemNum"    # I

    .prologue
    .line 520
    if-ltz p1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-lt p1, v0, :cond_1

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "item number is outside range of Form"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 103
    :cond_0
    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Form;->append(Ljavax/microedition/lcdui/Item;)I

    move-result v0

    return v0
.end method

.method public append(Ljavax/microedition/lcdui/Image;)I
    .locals 3
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v0, Ljavax/microedition/lcdui/ImageItem;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Ljavax/microedition/lcdui/ImageItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Form;->append(Ljavax/microedition/lcdui/Item;)I

    move-result v0

    return v0
.end method

.method public append(Ljavax/microedition/lcdui/Item;)I
    .locals 5
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;->verifyItem(Ljavax/microedition/lcdui/Item;)V

    .line 63
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.microemu.android.device.ui.AndroidFormUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v2, Lorg/microemu/device/ui/FormUI;

    iget-object v3, p1, Ljavax/microedition/lcdui/Item;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-interface {v2, v3}, Lorg/microemu/device/ui/FormUI;->append(Lorg/microemu/device/ui/ItemUI;)I

    .line 67
    :cond_0
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 68
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [Ljavax/microedition/lcdui/Item;

    .line 69
    .local v1, "newitems":[Ljavax/microedition/lcdui/Item;
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v3, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    .line 72
    .end local v1    # "newitems":[Ljavax/microedition/lcdui/Item;
    :cond_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v3, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    aput-object p1, v2, v3

    .line 73
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    .line 75
    iget v2, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-ge v0, v2, :cond_2

    .line 77
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Item;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 79
    iput v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 85
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Form;->repaint()V

    .line 87
    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 76
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public delete(I)V
    .locals 4
    .param p1, "itemNum"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;->verifyItemNum(I)V

    .line 111
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidFormUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/FormUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/FormUI;->delete(I)V

    .line 116
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Item;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 117
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v3, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v0, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    .line 120
    iget v0, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-nez v0, :cond_1

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 124
    :cond_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Form;->repaint()V

    .line 125
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.microemu.android.device.ui.AndroidFormUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v1, Lorg/microemu/device/ui/FormUI;

    invoke-interface {v1}, Lorg/microemu/device/ui/FormUI;->deleteAll()V

    .line 134
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Item;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 140
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Form;->repaint()V

    .line 141
    return-void
.end method

.method fireItemStateListener()V
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v1, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Form;->fireItemStateListener(Ljavax/microedition/lcdui/Item;)V

    .line 251
    :cond_0
    return-void
.end method

.method fireItemStateListener(Ljavax/microedition/lcdui/Item;)V
    .locals 2
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 241
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v1, Lorg/microemu/device/ui/FormUI;

    invoke-interface {v1}, Lorg/microemu/device/ui/FormUI;->getItemStateListener()Ljavax/microedition/lcdui/ItemStateListener;

    move-result-object v0

    .line 242
    .local v0, "listener":Ljavax/microedition/lcdui/ItemStateListener;
    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/ItemStateListener;->itemStateChanged(Ljavax/microedition/lcdui/Item;)V

    .line 245
    :cond_0
    return-void
.end method

.method public get(I)Ljavax/microedition/lcdui/Item;
    .locals 1
    .param p1, "itemNum"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;->verifyItemNum(I)V

    .line 148
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getCommands()Ljava/util/Vector;
    .locals 8

    .prologue
    .line 526
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getCommands()Ljava/util/Vector;

    move-result-object v1

    .line 527
    .local v1, "formCommands":Ljava/util/Vector;
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    if-gez v6, :cond_1

    .line 548
    .end local v1    # "formCommands":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-object v1

    .line 530
    .restart local v1    # "formCommands":Ljava/util/Vector;
    :cond_1
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v7, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v3, v6, v7

    .line 531
    .local v3, "item":Ljavax/microedition/lcdui/Item;
    iget-object v5, v3, Ljavax/microedition/lcdui/Item;->commands:Ljava/util/Vector;

    .line 532
    .local v5, "itemCommands":Ljava/util/Vector;
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 539
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 540
    .local v0, "allCommands":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 541
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 544
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/microedition/lcdui/Command;

    .line 545
    .local v4, "itemCommand":Ljavax/microedition/lcdui/Command;
    invoke-virtual {v4, v3}, Ljavax/microedition/lcdui/Command;->getItemCommand(Ljavax/microedition/lcdui/Item;)Ljavax/microedition/lcdui/Command;

    move-result-object v4

    .line 546
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v4    # "itemCommand":Ljavax/microedition/lcdui/Command;
    :cond_3
    move-object v1, v0

    .line 548
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v0

    return v0
.end method

.method hideNotify()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->hideNotify()V

    .line 288
    iget v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v1, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public insert(ILjavax/microedition/lcdui/Item;)V
    .locals 5
    .param p1, "itemNum"    # I
    .param p2, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    const/4 v3, 0x0

    .line 166
    iget v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-eq p1, v1, :cond_0

    .line 167
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;->verifyItemNum(I)V

    .line 169
    :cond_0
    invoke-direct {p0, p2}, Ljavax/microedition/lcdui/Form;->verifyItem(Ljavax/microedition/lcdui/Item;)V

    .line 171
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.microemu.android.device.ui.AndroidFormUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v1, Lorg/microemu/device/ui/FormUI;

    iget-object v2, p2, Ljavax/microedition/lcdui/Item;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-interface {v1, p1, v2}, Lorg/microemu/device/ui/FormUI;->insert(ILorg/microemu/device/ui/ItemUI;)V

    .line 175
    :cond_1
    iget v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 176
    iget v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [Ljavax/microedition/lcdui/Item;

    .line 177
    .local v0, "newitems":[Ljavax/microedition/lcdui/Item;
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v2, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    .line 180
    .end local v0    # "newitems":[Ljavax/microedition/lcdui/Item;
    :cond_2
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aput-object p2, v1, p1

    .line 187
    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v1, v1, p1

    invoke-virtual {v1, p0}, Ljavax/microedition/lcdui/Item;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 188
    iget v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    .line 190
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Form;->repaint()V

    .line 191
    return-void
.end method

.method keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 255
    iget v0, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 256
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getGameAction(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v1, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Item;->select()Z

    .line 260
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Form;->fireItemStateListener()V

    .line 266
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->keyPressed(I)V

    .line 267
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v1, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Item;->keyPressed(I)V

    goto :goto_0
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)I
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "contentHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-ge v1, v3, :cond_0

    .line 230
    iget-object v3, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljavax/microedition/lcdui/Item;->paint(Ljavax/microedition/lcdui/Graphics;)I

    move-result v2

    .line 231
    .local v2, "translateY":I
    invoke-virtual {p1, v4, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 232
    add-int/2addr v0, v2

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "translateY":I
    :cond_0
    neg-int v3, v0

    invoke-virtual {p1, v4, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 236
    return v0
.end method

.method public set(ILjavax/microedition/lcdui/Item;)V
    .locals 2
    .param p1, "itemNum"    # I
    .param p2, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;->verifyItemNum(I)V

    .line 197
    invoke-direct {p0, p2}, Ljavax/microedition/lcdui/Form;->verifyItem(Ljavax/microedition/lcdui/Item;)V

    .line 199
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidFormUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/FormUI;

    iget-object v1, p2, Ljavax/microedition/lcdui/Item;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-interface {v0, p1, v1}, Lorg/microemu/device/ui/FormUI;->set(ILorg/microemu/device/ui/ItemUI;)V

    .line 204
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Item;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 206
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aput-object p2, v0, p1

    .line 207
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Item;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 209
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Form;->repaint()V

    .line 210
    return-void
.end method

.method public setItemStateListener(Ljavax/microedition/lcdui/ItemStateListener;)V
    .locals 1
    .param p1, "iListener"    # Ljavax/microedition/lcdui/ItemStateListener;

    .prologue
    .line 215
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/FormUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/FormUI;->setItemStateListener(Ljavax/microedition/lcdui/ItemStateListener;)V

    .line 216
    return-void
.end method

.method showNotify()V
    .locals 4

    .prologue
    .line 271
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->showNotify()V

    .line 273
    iget v2, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    if-gez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v2, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    invoke-direct {p0, v2}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 276
    .local v1, "heightToItem":I
    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v3, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 277
    .local v0, "heightAfterItem":I
    iget v2, p0, Ljavax/microedition/lcdui/Form;->viewPortY:I

    if-le v2, v1, :cond_2

    .line 278
    iput v1, p0, Ljavax/microedition/lcdui/Form;->viewPortY:I

    goto :goto_0

    .line 279
    :cond_2
    iget v2, p0, Ljavax/microedition/lcdui/Form;->viewPortY:I

    iget v3, p0, Ljavax/microedition/lcdui/Form;->viewPortHeight:I

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    .line 280
    iget v2, p0, Ljavax/microedition/lcdui/Form;->viewPortHeight:I

    sub-int v2, v0, v2

    iput v2, p0, Ljavax/microedition/lcdui/Form;->viewPortY:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    return v0
.end method

.method traverse(III)I
    .locals 10
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 298
    iget v6, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    if-nez v6, :cond_1

    .line 299
    const/4 v5, 0x0

    .line 445
    :cond_0
    :goto_0
    return v5

    .line 302
    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_7

    .line 303
    invoke-direct {p0, p2}, Ljavax/microedition/lcdui/Form;->getTopVisibleIndex(I)I

    move-result v4

    .line 304
    .local v4, "topItemIndex":I
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 305
    move v3, v4

    .line 306
    .local v3, "testItemIndex":I
    invoke-direct {p0, v3}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 307
    .local v1, "height":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .line 323
    .local v5, "traverse":I
    :goto_1
    const v6, 0x7fffffff

    if-eq v5, v6, :cond_3

    .line 324
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Item;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 326
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 327
    iput v3, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    goto :goto_0

    .line 314
    .end local v1    # "height":I
    .end local v3    # "testItemIndex":I
    .end local v5    # "traverse":I
    :cond_2
    iget v3, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 315
    .restart local v3    # "testItemIndex":I
    invoke-direct {p0, v3}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 316
    .restart local v1    # "height":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x1

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .restart local v5    # "traverse":I
    goto :goto_1

    .line 331
    :cond_3
    if-lez v3, :cond_7

    .line 332
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-lt v2, v4, :cond_6

    .line 333
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Item;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 334
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 335
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v7, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 337
    :cond_4
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 338
    iput v2, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 339
    invoke-direct {p0, v2}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 340
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v2

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .line 346
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 347
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 332
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 353
    :cond_6
    invoke-direct {p0, v4}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 354
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v4

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .line 360
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_8

    .line 373
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "testItemIndex":I
    .end local v4    # "topItemIndex":I
    .end local v5    # "traverse":I
    :cond_7
    const/4 v6, 0x6

    if-ne p1, v6, :cond_e

    .line 374
    invoke-direct {p0, p3}, Ljavax/microedition/lcdui/Form;->getBottomVisibleIndex(I)I

    move-result v0

    .line 375
    .local v0, "bottomItemIndex":I
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    .line 376
    move v3, v0

    .line 377
    .restart local v3    # "testItemIndex":I
    invoke-direct {p0, v3}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 378
    .restart local v1    # "height":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .line 394
    .restart local v5    # "traverse":I
    :goto_3
    const v6, 0x7fffffff

    if-eq v5, v6, :cond_a

    .line 395
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Item;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 397
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 398
    iput v3, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    goto/16 :goto_0

    .line 362
    .end local v0    # "bottomItemIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "topItemIndex":I
    :cond_8
    add-int v6, p3, v5

    invoke-direct {p0, v6}, Ljavax/microedition/lcdui/Form;->getTopVisibleIndex(I)I

    move-result v0

    .line 363
    .restart local v0    # "bottomItemIndex":I
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    if-le v6, v0, :cond_0

    .line 365
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v7, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 366
    const/4 v6, -0x1

    iput v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    goto/16 :goto_0

    .line 385
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "testItemIndex":I
    .end local v4    # "topItemIndex":I
    .end local v5    # "traverse":I
    :cond_9
    iget v3, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 386
    .restart local v3    # "testItemIndex":I
    invoke-direct {p0, v3}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 387
    .restart local v1    # "height":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v3

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x1

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .restart local v5    # "traverse":I
    goto :goto_3

    .line 402
    :cond_a
    iget v6, p0, Ljavax/microedition/lcdui/Form;->numOfItems:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_e

    .line 403
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i":I
    :goto_4
    if-gt v2, v0, :cond_d

    .line 404
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Item;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 405
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    .line 406
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v7, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 408
    :cond_b
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 409
    iput v2, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    .line 410
    invoke-direct {p0, v2}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 411
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v2

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .line 417
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 418
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 403
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 424
    :cond_d
    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Form;->getHeightToItem(I)I

    move-result v1

    .line 425
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    aget-object v6, v6, v0

    sub-int v7, p2, v1

    sub-int v8, p3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Ljavax/microedition/lcdui/Item;->traverse(IIIZ)I

    move-result v5

    .line 431
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_f

    .line 445
    .end local v0    # "bottomItemIndex":I
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "testItemIndex":I
    .end local v5    # "traverse":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 433
    .restart local v0    # "bottomItemIndex":I
    .restart local v1    # "height":I
    .restart local v2    # "i":I
    .restart local v3    # "testItemIndex":I
    .restart local v5    # "traverse":I
    :cond_f
    add-int v6, p2, v5

    invoke-direct {p0, v6}, Ljavax/microedition/lcdui/Form;->getTopVisibleIndex(I)I

    move-result v4

    .line 434
    .restart local v4    # "topItemIndex":I
    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    if-ge v6, v4, :cond_0

    .line 436
    iget-object v6, p0, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    iget v7, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 437
    const/4 v6, -0x1

    iput v6, p0, Ljavax/microedition/lcdui/Form;->focusItemIndex:I

    goto/16 :goto_0
.end method

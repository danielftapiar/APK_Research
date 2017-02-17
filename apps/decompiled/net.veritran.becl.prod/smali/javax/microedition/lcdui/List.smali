.class public Ljavax/microedition/lcdui/List;
.super Ljavax/microedition/lcdui/Screen;
.source "List.java"

# interfaces
.implements Ljavax/microedition/lcdui/Choice;


# static fields
.field public static final SELECT_COMMAND:Ljavax/microedition/lcdui/Command;


# instance fields
.field choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

.field private initialPressedItem:I

.field private selCommand:Ljavax/microedition/lcdui/Command;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/microedition/lcdui/List;->SELECT_COMMAND:Ljavax/microedition/lcdui/Command;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "listType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 40
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Screen;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createListUI(Ljavax/microedition/lcdui/List;)Lorg/microemu/device/ui/ListUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->setUI(Lorg/microemu/device/ui/DisplayableUI;)V

    .line 43
    if-eq p2, v2, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-eq p2, v3, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal list type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-ne p2, v2, :cond_1

    .line 47
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v2, v1}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    .line 52
    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/ChoiceGroup;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 53
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->setFocus(Z)V

    .line 55
    sget-object v0, Ljavax/microedition/lcdui/List;->SELECT_COMMAND:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->selCommand:Ljavax/microedition/lcdui/Command;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/List;->initialPressedItem:I

    .line 57
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v0, v4, p2}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "listType"    # I
    .param p3, "stringElements"    # [Ljava/lang/String;
    .param p4, "imageElements"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Screen;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createListUI(Ljavax/microedition/lcdui/List;)Lorg/microemu/device/ui/ListUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->setUI(Lorg/microemu/device/ui/DisplayableUI;)V

    .line 63
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_1

    .line 65
    if-nez p4, :cond_0

    .line 66
    aget-object v0, p3, v6

    invoke-virtual {p0, v0, v1}, Ljavax/microedition/lcdui/List;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 64
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    :cond_0
    aget-object v0, p3, v6

    aget-object v2, p4, v6

    invoke-virtual {p0, v0, v2}, Ljavax/microedition/lcdui/List;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    .line 82
    .end local v6    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/ChoiceGroup;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 83
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/ChoiceGroup;->setFocus(Z)V

    .line 85
    sget-object v0, Ljavax/microedition/lcdui/List;->SELECT_COMMAND:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->selCommand:Ljavax/microedition/lcdui/Command;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/List;->initialPressedItem:I

    .line 87
    return-void

    .line 73
    :cond_3
    if-ne p2, v2, :cond_4

    .line 74
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    .line 75
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {p0}, Ljavax/microedition/lcdui/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 76
    invoke-virtual {p0, v6}, Ljavax/microedition/lcdui/List;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v1}, Ljavax/microedition/lcdui/List;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 79
    .end local v6    # "i":I
    :cond_4
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v0, v1, p2, p3, p4}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    goto :goto_2
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 2
    .param p1, "stringPart"    # Ljava/lang/String;
    .param p2, "imagePart"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 90
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0, p1, p2}, Lorg/microemu/device/ui/ListUI;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1, p2}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v0

    goto :goto_0
.end method

.method public delete(I)V
    .locals 2
    .param p1, "elementNum"    # I

    .prologue
    .line 98
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ListUI;->delete(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->delete(I)V

    goto :goto_0
.end method

.method public deleteAll()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/ListUI;->deleteAll()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->deleteAll()V

    goto :goto_0
.end method

.method public getFitPolicy()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getFitPolicy()I

    move-result v0

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p1, "elementNum"    # I

    .prologue
    .line 118
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->getFont(I)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "elementNum"    # I

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->getImage(I)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFlags([Z)I
    .locals 1
    .param p1, "selectedArray_return"    # [Z

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedFlags([Z)I

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/ListUI;->getSelectedIndex()I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "elementNum"    # I

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ListUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "elementNum"    # I
    .param p2, "stringPart"    # Ljava/lang/String;
    .param p3, "imagePart"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 146
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/ChoiceGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 147
    return-void
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "elementNum"    # I

    .prologue
    .line 150
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 199
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getGameAction(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->select()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v0, v0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 201
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/List;->selCommand:Ljavax/microedition/lcdui/Command;

    invoke-interface {v0, v1, p0}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->keyPressed(I)V

    goto :goto_0
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)I
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 250
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->paint(Ljavax/microedition/lcdui/Graphics;)I

    move-result v0

    return v0
.end method

.method pointerPressed(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 208
    invoke-virtual {p0}, Ljavax/microedition/lcdui/List;->getTicker()Ljavax/microedition/lcdui/Ticker;

    move-result-object v1

    .line 209
    .local v1, "ticker":Ljavax/microedition/lcdui/Ticker;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Ticker;->getHeight()I

    move-result v4

    sub-int/2addr p2, v4

    .line 213
    :cond_0
    new-instance v2, Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/List;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "title":Ljavax/microedition/lcdui/StringComponent;
    invoke-virtual {v2}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v4

    sub-int/2addr p2, v4

    .line 215
    add-int/lit8 p2, p2, -0x1

    .line 216
    if-ltz p2, :cond_1

    iget v4, p0, Ljavax/microedition/lcdui/List;->viewPortHeight:I

    if-ge p2, v4, :cond_1

    .line 217
    iget-object v4, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v5, p0, Ljavax/microedition/lcdui/List;->viewPortY:I

    add-int/2addr v5, p2

    invoke-virtual {v4, p1, v5}, Ljavax/microedition/lcdui/ChoiceGroup;->getItemIndexAt(II)I

    move-result v0

    .line 218
    .local v0, "pressedItem":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 219
    iget-object v4, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v4, v4, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 220
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/List;->isSelected(I)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-virtual {p0, v0, v3}, Ljavax/microedition/lcdui/List;->setSelectedIndex(IZ)V

    .line 224
    :goto_1
    iput v0, p0, Ljavax/microedition/lcdui/List;->initialPressedItem:I

    .line 227
    .end local v0    # "pressedItem":I
    :cond_1
    return-void

    .line 220
    .restart local v0    # "pressedItem":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {p0, v0, v3}, Ljavax/microedition/lcdui/List;->setSelectedIndex(IZ)V

    goto :goto_1
.end method

.method pointerReleased(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x3

    .line 230
    invoke-virtual {p0}, Ljavax/microedition/lcdui/List;->getTicker()Ljavax/microedition/lcdui/Ticker;

    move-result-object v1

    .line 231
    .local v1, "ticker":Ljavax/microedition/lcdui/Ticker;
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Ticker;->getHeight()I

    move-result v3

    sub-int/2addr p2, v3

    .line 235
    :cond_0
    new-instance v2, Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/List;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, "title":Ljavax/microedition/lcdui/StringComponent;
    invoke-virtual {v2}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v3

    sub-int/2addr p2, v3

    .line 237
    add-int/lit8 p2, p2, -0x1

    .line 238
    if-ltz p2, :cond_1

    iget v3, p0, Ljavax/microedition/lcdui/List;->viewPortHeight:I

    if-ge p2, v3, :cond_1

    iget-object v3, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v3, v3, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v3, v5, :cond_1

    .line 239
    iget-object v3, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v4, p0, Ljavax/microedition/lcdui/List;->viewPortY:I

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Ljavax/microedition/lcdui/ChoiceGroup;->getItemIndexAt(II)I

    move-result v0

    .line 240
    .local v0, "releasedItem":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 241
    iget v3, p0, Ljavax/microedition/lcdui/List;->initialPressedItem:I

    if-ne v0, v3, :cond_1

    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v3, v3, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v3, v5, :cond_1

    .line 243
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v3

    sget-object v4, Ljavax/microedition/lcdui/List;->SELECT_COMMAND:Ljavax/microedition/lcdui/Command;

    invoke-interface {v3, v4, p0}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 247
    .end local v0    # "releasedItem":I
    :cond_1
    return-void
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 0
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 155
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->removeCommand(Ljavax/microedition/lcdui/Command;)V

    .line 156
    return-void
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "elementNum"    # I
    .param p2, "stringPart"    # Ljava/lang/String;
    .param p3, "imagePart"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 159
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/ChoiceGroup;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 160
    return-void
.end method

.method public setFitPolicy(I)V
    .locals 1
    .param p1, "policy"    # I

    .prologue
    .line 163
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->setFitPolicy(I)V

    .line 164
    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 1
    .param p1, "elementNum"    # I
    .param p2, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 167
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1, p2}, Ljavax/microedition/lcdui/ChoiceGroup;->setFont(ILjavax/microedition/lcdui/Font;)V

    .line 168
    return-void
.end method

.method public setSelectCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 171
    iput-object p1, p0, Ljavax/microedition/lcdui/List;->selCommand:Ljavax/microedition/lcdui/Command;

    .line 173
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ListUI;->setSelectCommand(Ljavax/microedition/lcdui/Command;)V

    .line 174
    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 1
    .param p1, "selectedArray"    # [Z

    .prologue
    .line 177
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedFlags([Z)V

    .line 178
    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 2
    .param p1, "elementNum"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/ListUI;

    invoke-interface {v0, p1, p2}, Lorg/microemu/device/ui/ListUI;->setSelectedIndex(IZ)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1, p2}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    goto :goto_0
.end method

.method public setTicker(Ljavax/microedition/lcdui/Ticker;)V
    .locals 0
    .param p1, "ticker"    # Ljavax/microedition/lcdui/Ticker;

    .prologue
    .line 189
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->setTicker(Ljavax/microedition/lcdui/Ticker;)V

    .line 191
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->setTitle(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method showNotify()V
    .locals 5

    .prologue
    .line 258
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->showNotify()V

    .line 260
    iget-object v3, p0, Ljavax/microedition/lcdui/List;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.microemu.android.device.ui.AndroidListUI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/List;->getSelectedIndex()I

    move-result v2

    .line 263
    .local v2, "selectedItemIndex":I
    iget-object v3, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3, v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getHeightToItem(I)I

    move-result v1

    .line 264
    .local v1, "heightToItem":I
    move v0, v1

    .line 265
    .local v0, "heightAfterItem":I
    if-ltz v2, :cond_2

    .line 266
    iget-object v3, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3, v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getItemHeight(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 268
    :cond_2
    iget v3, p0, Ljavax/microedition/lcdui/List;->viewPortY:I

    if-le v3, v1, :cond_3

    .line 269
    iput v1, p0, Ljavax/microedition/lcdui/List;->viewPortY:I

    goto :goto_0

    .line 270
    :cond_3
    iget v3, p0, Ljavax/microedition/lcdui/List;->viewPortY:I

    iget v4, p0, Ljavax/microedition/lcdui/List;->viewPortHeight:I

    add-int/2addr v3, v4

    if-ge v3, v0, :cond_0

    .line 271
    iget v3, p0, Ljavax/microedition/lcdui/List;->viewPortHeight:I

    sub-int v3, v0, v3

    iput v3, p0, Ljavax/microedition/lcdui/List;->viewPortY:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->size()I

    move-result v0

    return v0
.end method

.method traverse(III)I
    .locals 3
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 277
    iget-object v1, p0, Ljavax/microedition/lcdui/List;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Ljavax/microedition/lcdui/ChoiceGroup;->traverse(IIIZ)I

    move-result v0

    .line 278
    .local v0, "traverse":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 281
    .end local v0    # "traverse":I
    :cond_0
    return v0
.end method

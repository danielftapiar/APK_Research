.class public Ljavax/microedition/lcdui/TextBox;
.super Ljavax/microedition/lcdui/Screen;
.source "TextBox.java"


# instance fields
.field inputMethodListener:Lorg/microemu/device/InputMethodListener;

.field tf:Ljavax/microedition/lcdui/TextField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "constraints"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Screen;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljavax/microedition/lcdui/TextBox$1;

    invoke-direct {v0, p0}, Ljavax/microedition/lcdui/TextBox$1;-><init>(Ljavax/microedition/lcdui/TextBox;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    .line 68
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    .line 70
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createTextBoxUI(Ljavax/microedition/lcdui/TextBox;)Lorg/microemu/device/ui/TextBoxUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->setUI(Lorg/microemu/device/ui/DisplayableUI;)V

    .line 71
    return-void
.end method


# virtual methods
.method public delete(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1, p2}, Ljavax/microedition/lcdui/TextField;->delete(II)V

    .line 75
    return-void
.end method

.method public getCaretPosition()I
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidTextBoxUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/TextBoxUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/TextBoxUI;->getCaretPosition()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getCaretPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getChars([C)I
    .locals 1
    .param p1, "data"    # [C

    .prologue
    .line 86
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/TextField;->getChars([C)I

    move-result v0

    return v0
.end method

.method public getConstraints()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getConstraints()I

    move-result v0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidTextBoxUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/TextBoxUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/TextBoxUI;->getString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method hideNotify()V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    invoke-virtual {v0, v1}, Lorg/microemu/device/InputMethod;->removeInputMethodListener(Lorg/microemu/device/InputMethodListener;)V

    .line 151
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->hideNotify()V

    .line 152
    return-void
.end method

.method public insert(Ljava/lang/String;I)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1, p2}, Ljavax/microedition/lcdui/TextField;->insert(Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method public insert([CIII)V
    .locals 1
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/TextField;->insert([CIII)V

    .line 107
    return-void
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)I
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 155
    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->viewPortY:I

    invoke-virtual {p1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 156
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextBox;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    iget v1, p0, Ljavax/microedition/lcdui/TextBox;->viewPortHeight:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v4, v4, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 157
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextBox;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    iget v1, p0, Ljavax/microedition/lcdui/TextBox;->viewPortHeight:I

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 158
    invoke-virtual {p1, v2, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 159
    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->viewPortY:I

    neg-int v0, v0

    invoke-virtual {p1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 160
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/TextField;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 162
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method setCaretPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1, p1}, Ljavax/microedition/lcdui/TextField;->setCaretPosition(I)V

    .line 168
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    iget-object v0, v1, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    .line 169
    .local v0, "tmp":Ljavax/microedition/lcdui/StringComponent;
    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->getCharPositionY(I)I

    move-result v1

    iget v2, p0, Ljavax/microedition/lcdui/TextBox;->viewPortY:I

    if-ge v1, v2, :cond_1

    .line 170
    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->getCharPositionY(I)I

    move-result v1

    iput v1, p0, Ljavax/microedition/lcdui/TextBox;->viewPortY:I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->getCharPositionY(I)I

    move-result v1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getCharHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Ljavax/microedition/lcdui/TextBox;->viewPortY:I

    iget v3, p0, Ljavax/microedition/lcdui/TextBox;->viewPortHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6

    if-le v1, v2, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->getCharPositionY(I)I

    move-result v1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getCharHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Ljavax/microedition/lcdui/TextBox;->viewPortHeight:I

    add-int/lit8 v2, v2, -0x6

    sub-int/2addr v1, v2

    iput v1, p0, Ljavax/microedition/lcdui/TextBox;->viewPortY:I

    goto :goto_0
.end method

.method public setChars([CII)V
    .locals 1
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 114
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/TextField;->setChars([CII)V

    .line 115
    return-void
.end method

.method public setConstraints(I)V
    .locals 1
    .param p1, "constraints"    # I

    .prologue
    .line 118
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/TextField;->setConstraints(I)V

    .line 119
    return-void
.end method

.method public setInitialInputMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "characterSubset"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public setMaxSize(I)I
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/TextField;->setMaxSize(I)I

    move-result v0

    return v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidTextBoxUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/TextBoxUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/TextBoxUI;->setString(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTicker(Ljavax/microedition/lcdui/Ticker;)V
    .locals 0
    .param p1, "ticker"    # Ljavax/microedition/lcdui/Ticker;

    .prologue
    .line 139
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->setTitle(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method showNotify()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->showNotify()V

    .line 178
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v1

    invoke-interface {v1}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v0

    .line 179
    .local v0, "inputMethod":Lorg/microemu/device/InputMethod;
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    invoke-virtual {v0, v1}, Lorg/microemu/device/InputMethod;->setInputMethodListener(Lorg/microemu/device/InputMethodListener;)V

    .line 180
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextBox;->getMaxSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/microemu/device/InputMethod;->setMaxSize(I)V

    .line 181
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextBox;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/TextBox;->setCaretPosition(I)V

    .line 182
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 183
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    return v0
.end method

.method traverse(III)I
    .locals 3
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 186
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Ljavax/microedition/lcdui/TextField;->traverse(IIIZ)I

    move-result v0

    .line 187
    .local v0, "traverse":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    .end local v0    # "traverse":I
    :cond_0
    return v0
.end method

.class public Ljavax/microedition/lcdui/Alert;
.super Ljavax/microedition/lcdui/Screen;
.source "Alert.java"


# static fields
.field public static final DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

.field public static final FOREVER:I = -0x2

.field static defaultListener:Ljavax/microedition/lcdui/CommandListener;

.field static nextDisplayable:Ljavax/microedition/lcdui/Displayable;


# instance fields
.field alertContent:Ljavax/microedition/lcdui/ImageStringItem;

.field indicator:Ljavax/microedition/lcdui/Gauge;

.field time:I

.field type:Ljavax/microedition/lcdui/AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "OK"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/microedition/lcdui/Alert;->DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

    .line 47
    new-instance v0, Ljavax/microedition/lcdui/Alert$1;

    invoke-direct {v0}, Ljavax/microedition/lcdui/Alert$1;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Alert;->defaultListener:Ljavax/microedition/lcdui/CommandListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0, v0}, Ljavax/microedition/lcdui/Alert;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/AlertType;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/AlertType;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "alertText"    # Ljava/lang/String;
    .param p3, "alertImage"    # Ljavax/microedition/lcdui/Image;
    .param p4, "alertType"    # Ljavax/microedition/lcdui/AlertType;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Screen;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createAlertUI(Ljavax/microedition/lcdui/Alert;)Lorg/microemu/device/ui/AlertUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->setUI(Lorg/microemu/device/ui/DisplayableUI;)V

    .line 72
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->getDefaultTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Alert;->setTimeout(I)V

    .line 73
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/Alert;->setString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p3}, Ljavax/microedition/lcdui/Alert;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 75
    invoke-virtual {p0, p4}, Ljavax/microedition/lcdui/Alert;->setType(Ljavax/microedition/lcdui/AlertType;)V

    .line 76
    sget-object v0, Ljavax/microedition/lcdui/Alert;->DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 77
    sget-object v0, Ljavax/microedition/lcdui/Alert;->defaultListener:Ljavax/microedition/lcdui/CommandListener;

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 78
    return-void
.end method

.method private getContentHeight()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ImageStringItem;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 83
    sget-object v0, Ljavax/microedition/lcdui/Alert;->DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 87
    sget-object v0, Ljavax/microedition/lcdui/Alert;->DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->removeCommand(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0
.end method

.method public getDefaultTimeout()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, -0x2

    return v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ImageStringItem;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getIndicator()Ljavax/microedition/lcdui/Gauge;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->indicator:Ljavax/microedition/lcdui/Gauge;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ImageStringItem;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Ljavax/microedition/lcdui/Alert;->time:I

    return v0
.end method

.method public getType()Ljavax/microedition/lcdui/AlertType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->type:Ljavax/microedition/lcdui/AlertType;

    return-object v0
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)I
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 229
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ImageStringItem;->paint(Ljavax/microedition/lcdui/Graphics;)I

    move-result v0

    return v0
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 92
    sget-object v0, Ljavax/microedition/lcdui/Alert;->DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->removeCommand(Ljavax/microedition/lcdui/Command;)V

    .line 96
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->getCommands()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Ljavax/microedition/lcdui/Alert;->DISMISS_COMMAND:Ljavax/microedition/lcdui/Command;

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Screen;->addCommand(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0
.end method

.method public setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V
    .locals 0
    .param p1, "l"    # Ljavax/microedition/lcdui/CommandListener;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    sget-object p1, Ljavax/microedition/lcdui/Alert;->defaultListener:Ljavax/microedition/lcdui/CommandListener;

    .line 137
    :cond_0
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Screen;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 138
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljavax/microedition/lcdui/ImageStringItem;

    invoke-direct {v0, v1, p1, v1}, Ljavax/microedition/lcdui/ImageStringItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    .line 153
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {p1}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;

    move-result-object p1

    .line 156
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ImageStringItem;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 157
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->repaint()V

    .line 158
    return-void
.end method

.method public setIndicator(Ljavax/microedition/lcdui/Gauge;)V
    .locals 3
    .param p1, "indicator"    # Ljavax/microedition/lcdui/Gauge;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 165
    if-nez p1, :cond_1

    .line 166
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->indicator:Ljavax/microedition/lcdui/Gauge;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->indicator:Ljavax/microedition/lcdui/Gauge;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Gauge;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 168
    :cond_0
    iput-object v2, p0, Ljavax/microedition/lcdui/Alert;->indicator:Ljavax/microedition/lcdui/Gauge;

    .line 169
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->repaint()V

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Gauge;->getLayout()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Gauge;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p1, Ljavax/microedition/lcdui/Gauge;->prefHeight:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Ljavax/microedition/lcdui/Gauge;->prefWidth:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Ljavax/microedition/lcdui/Gauge;->commandListener:Ljavax/microedition/lcdui/ItemCommandListener;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Gauge;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Gauge;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Ljavax/microedition/lcdui/Gauge;->commands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This gauge cannot be added to an Alert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    invoke-virtual {p1, p0}, Ljavax/microedition/lcdui/Gauge;->setOwner(Ljavax/microedition/lcdui/Screen;)V

    .line 188
    iput-object p1, p0, Ljavax/microedition/lcdui/Alert;->indicator:Ljavax/microedition/lcdui/Gauge;

    .line 189
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->repaint()V

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->ui:Lorg/microemu/device/ui/DisplayableUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidAlertUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->ui:Lorg/microemu/device/ui/DisplayableUI;

    check-cast v0, Lorg/microemu/device/ui/AlertUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/AlertUI;->setString(Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljavax/microedition/lcdui/ImageStringItem;

    invoke-direct {v0, v2, v2, p1}, Ljavax/microedition/lcdui/ImageStringItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    .line 203
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alertContent:Ljavax/microedition/lcdui/ImageStringItem;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ImageStringItem;->setText(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->repaint()V

    .line 205
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    const/4 v0, -0x2

    .line 210
    if-eq p1, v0, :cond_0

    if-gtz p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 214
    :cond_0
    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->getCommands()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 215
    const/4 p1, -0x2

    .line 217
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/Alert;->time:I

    .line 218
    return-void
.end method

.method public setType(Ljavax/microedition/lcdui/AlertType;)V
    .locals 0
    .param p1, "type"    # Ljavax/microedition/lcdui/AlertType;

    .prologue
    .line 128
    iput-object p1, p0, Ljavax/microedition/lcdui/Alert;->type:Ljavax/microedition/lcdui/AlertType;

    .line 129
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Alert;->repaint()V

    .line 130
    return-void
.end method

.method showNotify()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Ljavax/microedition/lcdui/Screen;->showNotify()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/Alert;->viewPortY:I

    .line 237
    return-void
.end method

.method traverse(III)I
    .locals 2
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 242
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 244
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    neg-int v1, v1

    .line 251
    :goto_0
    return v1

    .line 247
    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Ljavax/microedition/lcdui/Alert;->getContentHeight()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 248
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

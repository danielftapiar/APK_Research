.class public Ljavax/microedition/lcdui/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field public static final BACK:I = 0x2

.field public static final CANCEL:I = 0x3

.field public static final EXIT:I = 0x7

.field public static final HELP:I = 0x5

.field public static final ITEM:I = 0x8

.field public static final OK:I = 0x4

.field public static final SCREEN:I = 0x1

.field public static final STOP:I = 0x6


# instance fields
.field commandType:I

.field private focusedItem:Ljavax/microedition/lcdui/Item;

.field private itemCommand:Ljavax/microedition/lcdui/Command;

.field label:Ljava/lang/String;

.field private originalCommand:Ljavax/microedition/lcdui/Command;

.field priority:I

.field ui:Lorg/microemu/device/ui/CommandUI;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "commandType"    # I
    .param p3, "priority"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljavax/microedition/lcdui/Command;->label:Ljava/lang/String;

    .line 64
    iput p2, p0, Ljavax/microedition/lcdui/Command;->commandType:I

    .line 65
    iput p3, p0, Ljavax/microedition/lcdui/Command;->priority:I

    .line 67
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createCommandUI(Ljavax/microedition/lcdui/Command;)Lorg/microemu/device/ui/CommandUI;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Command;->ui:Lorg/microemu/device/ui/CommandUI;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "shortLabel"    # Ljava/lang/String;
    .param p2, "longLabel"    # Ljava/lang/String;
    .param p3, "commandType"    # I
    .param p4, "priority"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p3, p4}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    .line 73
    return-void
.end method


# virtual methods
.method public getCommandType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Ljavax/microedition/lcdui/Command;->commandType:I

    return v0
.end method

.method getFocusedItem()Ljavax/microedition/lcdui/Item;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Command;->isRegularCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->focusedItem:Ljavax/microedition/lcdui/Item;

    return-object v0
.end method

.method getItemCommand(Ljavax/microedition/lcdui/Item;)Ljavax/microedition/lcdui/Command;
    .locals 4
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 108
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Command;->isRegularCommand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 111
    :cond_0
    if-nez p1, :cond_1

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 116
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->itemCommand:Ljavax/microedition/lcdui/Command;

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Command;->itemCommand:Ljavax/microedition/lcdui/Command;

    .line 118
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->itemCommand:Ljavax/microedition/lcdui/Command;

    iput-object p0, v0, Ljavax/microedition/lcdui/Command;->originalCommand:Ljavax/microedition/lcdui/Command;

    .line 120
    :cond_2
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->itemCommand:Ljavax/microedition/lcdui/Command;

    iput-object p1, v0, Ljavax/microedition/lcdui/Command;->focusedItem:Ljavax/microedition/lcdui/Item;

    .line 121
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->itemCommand:Ljavax/microedition/lcdui/Command;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->label:Ljava/lang/String;

    return-object v0
.end method

.method getOriginalCommand()Ljavax/microedition/lcdui/Command;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Command;->isRegularCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->originalCommand:Ljavax/microedition/lcdui/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Ljavax/microedition/lcdui/Command;->priority:I

    return v0
.end method

.method isRegularCommand()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->originalCommand:Ljavax/microedition/lcdui/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->ui:Lorg/microemu/device/ui/CommandUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/CommandUI;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 97
    return-void
.end method

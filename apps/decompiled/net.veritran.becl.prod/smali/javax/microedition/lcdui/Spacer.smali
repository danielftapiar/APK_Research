.class public Ljavax/microedition/lcdui/Spacer;
.super Ljavax/microedition/lcdui/Item;
.source "Spacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;
    }
.end annotation


# instance fields
.field private customItem:Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

.field private minHeight:I

.field private minWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    invoke-direct {v0, p0}, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;-><init>(Ljavax/microedition/lcdui/Spacer;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Spacer;->customItem:Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    .line 41
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Spacer$1;

    invoke-direct {v1, p0}, Ljavax/microedition/lcdui/Spacer$1;-><init>(Ljavax/microedition/lcdui/Spacer;)V

    invoke-interface {v0, v1}, Lorg/microemu/device/ui/UIFactory;->createCustomItemUI(Lorg/microemu/CustomItemAccess;)Lorg/microemu/device/ui/CustomItemUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Ljavax/microedition/lcdui/Spacer;->setMinimumSize(II)V

    .line 61
    return-void
.end method

.method static access$000(Ljavax/microedition/lcdui/Spacer;)Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Spacer;

    .prologue
    .line 30
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer;->customItem:Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    return-object v0
.end method

.method static access$100(Ljavax/microedition/lcdui/Spacer;)I
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Spacer;

    .prologue
    .line 30
    iget v0, p0, Ljavax/microedition/lcdui/Spacer;->minWidth:I

    return v0
.end method

.method static access$200(Ljavax/microedition/lcdui/Spacer;)I
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/Spacer;

    .prologue
    .line 30
    iget v0, p0, Ljavax/microedition/lcdui/Spacer;->minHeight:I

    return v0
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 2
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spacer items can\'t have commands"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 2
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spacer items can\'t have commands"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spacer items can\'t have labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumSize(II)V
    .locals 1
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 76
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/Spacer;->minWidth:I

    .line 81
    iput p2, p0, Ljavax/microedition/lcdui/Spacer;->minHeight:I

    .line 82
    return-void
.end method

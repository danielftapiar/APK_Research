.class public Ljavax/microedition/lcdui/ChoiceGroup;
.super Ljavax/microedition/lcdui/Item;
.source "ChoiceGroup.java"

# interfaces
.implements Ljavax/microedition/lcdui/Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;,
        Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;
    }
.end annotation


# static fields
.field private static final imgMultiOff:Ljavax/microedition/lcdui/Image;

.field private static final imgMultiOn:Ljavax/microedition/lcdui/Image;

.field private static final imgRadioOff:Ljavax/microedition/lcdui/Image;

.field private static final imgRadioOn:Ljavax/microedition/lcdui/Image;

.field private static multiOff:[B

.field private static multiOn:[B

.field private static radioOff:[B

.field private static radioOn:[B


# instance fields
.field choiceType:I

.field private fitPolicy:I

.field private highlightedItemIndex:I

.field private items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

.field private numOfItems:I

.field private popupList:Ljavax/microedition/lcdui/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const/16 v0, 0x69

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->multiOff:[B

    .line 57
    const/16 v0, 0x86

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->multiOn:[B

    .line 74
    const/16 v0, 0x78

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->radioOff:[B

    .line 89
    const/16 v0, 0x83

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->radioOn:[B

    .line 106
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->multiOff:[B

    sget-object v1, Ljavax/microedition/lcdui/ChoiceGroup;->multiOff:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgMultiOff:Ljavax/microedition/lcdui/Image;

    .line 107
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->multiOn:[B

    sget-object v1, Ljavax/microedition/lcdui/ChoiceGroup;->multiOn:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgMultiOn:Ljavax/microedition/lcdui/Image;

    .line 108
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->radioOff:[B

    sget-object v1, Ljavax/microedition/lcdui/ChoiceGroup;->radioOff:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgRadioOff:Ljavax/microedition/lcdui/Image;

    .line 109
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->radioOn:[B

    sget-object v1, Ljavax/microedition/lcdui/ChoiceGroup;->radioOn:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgRadioOn:Ljavax/microedition/lcdui/Image;

    return-void

    .line 43
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
        0x0t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0xbt
        0x2t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3bt
        0x0t
        -0xct
        -0x75t
        0x0t
        0x0t
        0x0t
        0x6t
        0x50t
        0x4ct
        0x54t
        0x45t
        -0x1t
        -0x1t
        -0x1t
        -0x45t
        -0x45t
        -0x45t
        -0x39t
        0x4bt
        -0x21t
        -0x8t
        0x0t
        0x0t
        0x0t
        0x1et
        0x49t
        0x44t
        0x41t
        0x54t
        0x78t
        -0x26t
        0x63t
        0x60t
        0x60t
        0x60t
        0x60t
        0xct
        0x65t
        -0x8t
        -0x33t
        -0x20t
        -0x40t
        0x20t
        -0x40t
        -0x3ct
        -0x40t
        -0x40t
        -0x80t
        0xbt
        0x33t
        -0x7at
        0x32t
        -0x4t
        0x6t
        0x0t
        0x3ft
        0x74t
        0x3t
        0x1t
        0x35t
        -0x6ct
        0x27t
        -0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data

    .line 57
    nop

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
        0x0t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0xbt
        0x2t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3bt
        0x0t
        -0xct
        -0x75t
        0x0t
        0x0t
        0x0t
        0xct
        0x50t
        0x4ct
        0x54t
        0x45t
        -0x1t
        -0x1t
        -0x1t
        -0x45t
        -0x45t
        -0x45t
        0x6at
        0x6at
        0x6at
        0x2t
        0x2t
        0x2t
        0x6at
        -0x67t
        0xet
        -0x2ft
        0x0t
        0x0t
        0x0t
        0x35t
        0x49t
        0x44t
        0x41t
        0x54t
        0x78t
        -0x26t
        0x63t
        0x60t
        0x60t
        0x7ct
        -0x40t
        -0x10t
        -0x1t
        -0x4dt
        0x3t
        -0x2dt
        0x41t
        -0x6ft
        0xft
        0x4ct
        0xct
        0x6ct
        0xct
        0x4ct
        0xct
        -0x4t
        0xct
        0x4ct
        0xct
        0x12t
        0xct
        0x4ct
        -0x44t
        0x7ft
        0x18t
        -0x68t
        0x7et
        0x2dt
        0x60t
        0x60t
        -0x7t
        -0xbt
        -0x6dt
        -0x7ft
        -0x17t
        -0x41t
        0x3t
        0x3t
        -0x1dt
        0x7ft
        -0x7at
        -0x71t
        0x0t
        0x5t
        0x25t
        0xct
        -0x22t
        0x1t
        -0x63t
        -0x53t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data

    .line 74
    nop

    :array_2
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x0t
        0xbt
        0x2t
        0x3t
        0x0t
        0x0t
        0x0t
        -0x2ct
        -0x3et
        -0x61t
        -0x4bt
        0x0t
        0x0t
        0x0t
        0x9t
        0x50t
        0x4ct
        0x54t
        0x45t
        -0x1t
        -0x1t
        -0x1t
        -0x45t
        -0x45t
        -0x45t
        0x6at
        0x6at
        0x6at
        -0x2ct
        0xdt
        -0x1t
        -0x18t
        0x0t
        0x0t
        0x0t
        0x2at
        0x49t
        0x44t
        0x41t
        0x54t
        0x78t
        -0x26t
        0x63t
        0x60t
        0x5at
        -0x3bt
        -0x40t
        0x20t
        -0x3ft
        0x30t
        -0x7ft
        0x41t
        -0x7ft
        0x41t
        -0x7ft
        0x29t
        -0x7ft
        -0x1ft
        0x5t
        0x13t
        0x3t
        0x3t
        0x3t
        0x32t
        0x66t
        0x50t
        0x60t
        0x50t
        0x60t
        -0x6t
        -0x3ft
        0x50t
        -0x40t
        -0x40t
        -0x4ct
        -0x76t
        0x1t
        0x0t
        0x71t
        0x18t
        0x5t
        0x3dt
        0x49t
        -0x44t
        -0x64t
        0x62t
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data

    .line 89
    :array_3
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x0t
        0xbt
        0x2t
        0x3t
        0x0t
        0x0t
        0x0t
        -0x2ct
        -0x3et
        -0x61t
        -0x4bt
        0x0t
        0x0t
        0x0t
        0xct
        0x50t
        0x4ct
        0x54t
        0x45t
        -0x1t
        -0x1t
        -0x1t
        -0x45t
        -0x45t
        -0x45t
        0x6at
        0x6at
        0x6at
        0x2t
        0x2t
        0x2t
        0x6at
        -0x67t
        0xet
        -0x2ft
        0x0t
        0x0t
        0x0t
        0x32t
        0x49t
        0x44t
        0x41t
        0x54t
        0x78t
        -0x26t
        0x5t
        -0x3ft
        0x41t
        0xdt
        0x0t
        0x20t
        0xct
        0x4t
        -0x3ft
        -0x13t
        -0xbt
        -0x75t
        0x1t
        0x12t
        0x44t
        -0x64t
        0xat
        0x34t
        0x13t
        0x5et
        0x48t
        0x40t
        0x11t
        0x65t
        -0x7at
        0x2ct
        -0x2ct
        -0x1dt
        0x62t
        -0x34t
        0x59t
        0x4dt
        -0x66t
        0x28t
        0x2t
        0x55t
        -0x5ft
        -0x49t
        -0x3ft
        -0x68t
        -0x3ft
        0x25t
        -0x75t
        0xft
        -0x28t
        0x77t
        0xat
        0x29t
        0x4et
        0x1at
        -0x4ft
        0x3bt
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "choiceType"    # I

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;IZ)V

    .line 115
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "choiceType"    # I
    .param p3, "validateChoiceType"    # Z

    .prologue
    const/4 v1, 0x4

    .line 126
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 33
    new-array v0, v1, [Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 127
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lorg/microemu/device/ui/UIFactory;->createChoiceGroupUI(Ljavax/microedition/lcdui/ChoiceGroup;I)Lorg/microemu/device/ui/ChoiceGroupUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 129
    if-eqz p3, :cond_0

    .line 130
    if-eq p2, v1, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal choice type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput p2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    .line 135
    if-ne p2, v1, :cond_1

    .line 138
    new-instance v0, Ljavax/microedition/lcdui/List;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Ljavax/microedition/lcdui/List;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    .line 139
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;

    invoke-direct {v1, p0}, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;-><init>(Ljavax/microedition/lcdui/ChoiceGroup;)V

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/List;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 141
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "choiceType"    # I
    .param p3, "stringElements"    # [Ljava/lang/String;
    .param p4, "imageElements"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 120
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "choiceType"    # I
    .param p3, "stringElements"    # [Ljava/lang/String;
    .param p4, "imageElements"    # [Ljavax/microedition/lcdui/Image;
    .param p5, "validateChoiceType"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p5}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;IZ)V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 150
    if-nez p4, :cond_0

    .line 151
    aget-object v1, p3, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 149
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    aget-object v1, p3, v0

    aget-object v2, p4, v0

    invoke-virtual {p0, v1, v2}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    .line 156
    :cond_1
    return-void
.end method

.method static access$000()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgRadioOn:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method static access$100()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgRadioOff:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method static access$200()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgMultiOn:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method static access$300()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ljavax/microedition/lcdui/ChoiceGroup;->imgMultiOff:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 1
    .param p1, "stringPart"    # Ljava/lang/String;
    .param p2, "imagePart"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 160
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/microedition/lcdui/ChoiceGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 162
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public delete(I)V
    .locals 5
    .param p1, "itemNum"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ChoiceGroupUI;->delete(I)V

    .line 206
    :goto_0
    return-void

    .line 170
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_2

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 175
    :cond_2
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-eq v1, v0, :cond_3

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v4, v0, :cond_4

    :cond_3
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-le v0, v1, :cond_4

    .line 178
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_1
    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setSelectedState(Z)V

    .line 183
    :cond_4
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_5

    .line 184
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :cond_5
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    .line 189
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 193
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    if-le v0, p1, :cond_6

    .line 194
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 198
    :cond_6
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt v0, v1, :cond_7

    .line 199
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 202
    :cond_7
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v0, v4, :cond_8

    .line 203
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/List;->delete(I)V

    .line 204
    :cond_8
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 178
    goto :goto_1
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v1, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v1}, Lorg/microemu/device/ui/ChoiceGroupUI;->deleteAll()V

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    .line 216
    const/4 v1, -0x1

    iput v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 217
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 218
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/List;->deleteAll()V

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0
.end method

.method public getFitPolicy()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->fitPolicy:I

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p1, "itemNum"    # I

    .prologue
    .line 229
    if-ltz p1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method getHeight()I
    .locals 4

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "height":I
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 523
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 524
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 532
    :cond_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 527
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v1, v2, :cond_0

    .line 528
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getHeightToItem(I)I
    .locals 3
    .param p1, "itemIndex"    # I

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 558
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "elementNum"    # I

    .prologue
    .line 238
    if-ltz p1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 242
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method getItemHeight(I)I
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 567
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v0

    return v0
.end method

.method getItemIndexAt(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 540
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, "testY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v2, :cond_1

    .line 543
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 544
    if-ge p2, v1, :cond_0

    .line 549
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 542
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedFlags([Z)I
    .locals 4
    .param p1, "selectedArray"    # [Z

    .prologue
    .line 259
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v2, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v2, p1}, Lorg/microemu/device/ui/ChoiceGroupUI;->getSelectedFlags([Z)I

    move-result v1

    .line 279
    :cond_0
    return v1

    .line 262
    :cond_1
    if-nez p1, :cond_2

    .line 263
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 265
    :cond_2
    array-length v2, p1

    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v2, v3, :cond_3

    .line 266
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 270
    :cond_3
    const/4 v1, 0x0

    .line 272
    .local v1, "selectedItemsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 273
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->isSelected()Z

    move-result v2

    :goto_1
    aput-boolean v2, p1, v0

    .line 274
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_4

    .line 275
    add-int/lit8 v1, v1, 0x1

    .line 272
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v1, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v1}, Lorg/microemu/device/ui/ChoiceGroupUI;->getSelectedIndex()I

    move-result v0

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    packed-switch v1, :pswitch_data_0

    .line 311
    :cond_2
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 303
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v1, :cond_2

    .line 304
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "i":I
    :pswitch_2
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "elementNum"    # I

    .prologue
    .line 318
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/ChoiceGroupUI;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 323
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ChoiceGroupUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 326
    :cond_2
    if-ltz p1, :cond_3

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_4

    .line 327
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 330
    :cond_4
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 8
    .param p1, "elementNum"    # I
    .param p2, "stringPart"    # Ljava/lang/String;
    .param p3, "imagePart"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v1, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v1, p1, p2, p3}, Lorg/microemu/device/ui/ChoiceGroupUI;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 371
    :goto_0
    return-void

    .line 339
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-le p1, v1, :cond_2

    .line 340
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 342
    :cond_2
    if-nez p2, :cond_3

    .line 343
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 346
    :cond_3
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v1, v7, :cond_4

    .line 347
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/microedition/lcdui/List;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 350
    :cond_4
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    array-length v2, v2

    if-ne v1, v2, :cond_5

    .line 351
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    .line 352
    .local v0, "newItems":[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    .line 356
    .end local v0    # "newItems":[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;
    :cond_5
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p3, p2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;-><init>(Ljavax/microedition/lcdui/ChoiceGroup;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljava/lang/String;)V

    aput-object v2, v1, p1

    .line 360
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    .line 362
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ne v1, v6, :cond_7

    .line 363
    iput v5, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 364
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-eq v6, v1, :cond_6

    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v7, v1, :cond_7

    .line 365
    :cond_6
    invoke-virtual {p0, v5, v6}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 369
    :cond_7
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0
.end method

.method isFocusable()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public isSelected(I)Z
    .locals 2
    .param p1, "elementNum"    # I

    .prologue
    .line 375
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ChoiceGroupUI;->isSelected(I)Z

    move-result v0

    .line 382
    :goto_0
    return v0

    .line 378
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_2

    .line 379
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 382
    :cond_2
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->isSelected()Z

    move-result v0

    goto :goto_0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v4, 0x0

    .line 573
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 575
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 576
    const/4 v2, 0x0

    .line 578
    .local v2, "translatedY":I
    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 579
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v1

    .line 580
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 581
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->hasFocus()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->invertPaint(Z)V

    .line 582
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->paint(Ljavax/microedition/lcdui/Graphics;)I

    .line 584
    :cond_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1, v4, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 596
    .end local v1    # "index":I
    :goto_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->getHeight()I

    move-result v3

    return v3

    .line 586
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v3, :cond_3

    .line 587
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v5, v3, v0

    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->invertPaint(Z)V

    .line 588
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->paint(Ljavax/microedition/lcdui/Graphics;)I

    .line 589
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 590
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 587
    goto :goto_2

    .line 592
    :cond_3
    neg-int v3, v2

    invoke-virtual {p1, v4, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 593
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1, v4, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto :goto_0
.end method

.method repaint()V
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/List;->repaint()V

    .line 703
    :cond_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->repaint()V

    .line 704
    return-void
.end method

.method select()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 602
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-nez v2, :cond_0

    .line 618
    :goto_0
    return v0

    .line 606
    :cond_0
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 607
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v0

    iget-object v0, v0, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    :goto_1
    move v0, v1

    .line 618
    goto :goto_0

    .line 615
    :cond_1
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v2, v0}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    goto :goto_1
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "elementNum"    # I
    .param p2, "stringPart"    # Ljava/lang/String;
    .param p3, "imagePart"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 388
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v0, p1, p2, p3}, Lorg/microemu/device/ui/ChoiceGroupUI;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 410
    :goto_0
    return-void

    .line 391
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_2

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 394
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 397
    :cond_3
    if-nez p2, :cond_4

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 401
    :cond_4
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setText(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 404
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 405
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/List;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 408
    :cond_5
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0
.end method

.method public setFitPolicy(I)V
    .locals 2
    .param p1, "policy"    # I

    .prologue
    .line 413
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad Policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    iput p1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->fitPolicy:I

    .line 418
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 419
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/List;->setFitPolicy(I)V

    .line 421
    :cond_1
    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 2
    .param p1, "itemNum"    # I
    .param p2, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 424
    if-ltz p1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v0, :cond_1

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 427
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 428
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 429
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v0, p1, p2}, Ljavax/microedition/lcdui/List;->setFont(ILjavax/microedition/lcdui/Font;)V

    .line 431
    :cond_2
    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 5
    .param p1, "selectedArray"    # [Z

    .prologue
    const/4 v4, 0x1

    .line 435
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v2, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v2, p1}, Lorg/microemu/device/ui/ChoiceGroupUI;->setSelectedFlags([Z)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    if-nez p1, :cond_2

    .line 439
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 441
    :cond_2
    array-length v2, p1

    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v2, v3, :cond_3

    .line 442
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 445
    :cond_3
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-eqz v2, :cond_0

    .line 448
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v2, :cond_0

    .line 450
    aget-boolean v2, p1, v0

    invoke-virtual {p0, v0, v2}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    .end local v0    # "i":I
    :cond_4
    const/4 v1, -0x1

    .line 454
    .local v1, "selectedItem":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v2, :cond_5

    .line 455
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_7

    .line 456
    invoke-virtual {p0, v0, v4}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 457
    move v1, v0

    .line 461
    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 462
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 465
    :cond_6
    iget v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 466
    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v2, p1}, Ljavax/microedition/lcdui/List;->setSelectedFlags([Z)V

    goto :goto_0

    .line 454
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setSelectedIndex(IZ)V
    .locals 5
    .param p1, "elementNum"    # I
    .param p2, "selected"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    .line 474
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v1, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v1, p1, p2}, Lorg/microemu/device/ui/ChoiceGroupUI;->setSelectedIndex(IZ)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt p1, v1, :cond_3

    .line 478
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 481
    :cond_3
    iput p1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 482
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v1, v4, :cond_8

    :cond_4
    if-eqz p2, :cond_8

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-ge v0, v1, :cond_6

    .line 485
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v1, v0

    if-ne p1, v0, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setSelectedState(Z)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 487
    :cond_6
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v1, v4, :cond_7

    .line 488
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->popupList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1, p1, v2}, Ljavax/microedition/lcdui/List;->setSelectedIndex(IZ)V

    .line 490
    :cond_7
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0

    .line 491
    .end local v0    # "i":I
    :cond_8
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 492
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setSelectedState(Z)V

    .line 493
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0

    .line 494
    :cond_9
    iget v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 495
    if-eqz p2, :cond_0

    .line 496
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setSelectedState(Z)V

    .line 497
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidChoiceGroupUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ChoiceGroupUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/ChoiceGroupUI;->size()I

    move-result v0

    .line 508
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    goto :goto_0
.end method

.method traverse(IIIZ)I
    .locals 8
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const v3, 0x7fffffff

    .line 626
    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 628
    if-ne p1, v6, :cond_1

    .line 629
    if-lez p2, :cond_0

    .line 630
    neg-int v3, p2

    .line 695
    :cond_0
    :goto_0
    return v3

    .line 634
    :cond_1
    if-ne p1, v7, :cond_4

    .line 635
    if-nez p4, :cond_0

    .line 636
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    .line 637
    .local v0, "height":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    .line 638
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 639
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 642
    :cond_2
    if-le v0, p3, :cond_3

    .line 643
    sub-int v3, v0, p3

    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    .line 695
    .end local v0    # "height":I
    .end local v2    # "index":I
    :cond_4
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 652
    :cond_5
    if-ne p1, v6, :cond_9

    .line 653
    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    if-lez v4, :cond_d

    .line 654
    if-eqz p4, :cond_6

    .line 655
    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 657
    :cond_6
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    .line 658
    .restart local v0    # "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    if-ge v1, v4, :cond_7

    .line 659
    iget-object v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 661
    :cond_7
    if-ge v0, p2, :cond_8

    .line 662
    sub-int v3, v0, p2

    goto :goto_0

    .line 664
    :cond_8
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    .line 674
    .end local v0    # "height":I
    .end local v1    # "i":I
    :cond_9
    if-ne p1, v7, :cond_4

    .line 675
    if-nez p4, :cond_a

    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    iget v5, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    if-lt v4, v5, :cond_b

    :cond_a
    if-eqz p4, :cond_0

    iget v4, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    iget v5, p0, Ljavax/microedition/lcdui/ChoiceGroup;->numOfItems:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 677
    :cond_b
    if-eqz p4, :cond_c

    .line 678
    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    .line 680
    :cond_c
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    .line 681
    .restart local v0    # "height":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->highlightedItemIndex:I

    if-gt v1, v3, :cond_e

    .line 682
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup;->items:[Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 667
    .end local v0    # "height":I
    .end local v1    # "i":I
    :cond_d
    if-lez p2, :cond_0

    .line 668
    neg-int v3, p2

    goto/16 :goto_0

    .line 684
    .restart local v0    # "height":I
    .restart local v1    # "i":I
    :cond_e
    if-le v0, p3, :cond_f

    .line 685
    sub-int v3, v0, p3

    goto/16 :goto_0

    .line 687
    :cond_f
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V

    goto :goto_1
.end method

.class public final Ljavax/microedition/lcdui/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field private static final DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

.field public static final FACE_MONOSPACE:I = 0x20

.field public static final FACE_PROPORTIONAL:I = 0x40

.field public static final FACE_SYSTEM:I = 0x0

.field public static final FONT_INPUT_TEXT:I = 0x1

.field public static final FONT_STATIC_TEXT:I = 0x0

.field public static final SIZE_LARGE:I = 0x10

.field public static final SIZE_MEDIUM:I = 0x0

.field public static final SIZE_SMALL:I = 0x8

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_PLAIN:I = 0x0

.field public static final STYLE_UNDERLINED:I = 0x4

.field private static fonts:Ljava/util/Hashtable;

.field private static fontsBySpecifier:[Ljavax/microedition/lcdui/Font;


# instance fields
.field private baselinePosition:I

.field private face:I

.field private height:I

.field private size:I

.field private style:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Ljavax/microedition/lcdui/Font;

    invoke-direct {v0, v2, v2, v2}, Ljavax/microedition/lcdui/Font;-><init>(III)V

    sput-object v0, Ljavax/microedition/lcdui/Font;->DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/microedition/lcdui/Font;

    sget-object v1, Ljavax/microedition/lcdui/Font;->DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Ljavax/microedition/lcdui/Font;->DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/microedition/lcdui/Font;->fontsBySpecifier:[Ljavax/microedition/lcdui/Font;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Font;->fonts:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Ljavax/microedition/lcdui/Font;->baselinePosition:I

    .line 60
    iput v0, p0, Ljavax/microedition/lcdui/Font;->height:I

    .line 65
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->isPlain()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->isBold()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->isItalic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->isUnderlined()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    const/16 v0, 0x8

    if-eq p3, v0, :cond_2

    if-eqz p3, :cond_2

    const/16 v0, 0x10

    if-eq p3, v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_2
    iput p1, p0, Ljavax/microedition/lcdui/Font;->face:I

    .line 76
    iput p2, p0, Ljavax/microedition/lcdui/Font;->style:I

    .line 77
    iput p3, p0, Ljavax/microedition/lcdui/Font;->size:I

    .line 78
    return-void
.end method

.method public static getDefaultFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Ljavax/microedition/lcdui/Font;->DEFAULT_FONT:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public static getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 2
    .param p0, "specifier"    # I

    .prologue
    .line 88
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-object v0, Ljavax/microedition/lcdui/Font;->fontsBySpecifier:[Ljavax/microedition/lcdui/Font;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFont(III)Ljavax/microedition/lcdui/Font;
    .locals 3
    .param p0, "face"    # I
    .param p1, "style"    # I
    .param p2, "size"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Integer;

    add-int v2, p1, p2

    add-int/2addr v2, p0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 98
    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Ljavax/microedition/lcdui/Font;->fonts:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Font;

    .line 99
    .local v1, "result":Ljavax/microedition/lcdui/Font;
    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljavax/microedition/lcdui/Font;

    .end local v1    # "result":Ljavax/microedition/lcdui/Font;
    invoke-direct {v1, p0, p1, p2}, Ljavax/microedition/lcdui/Font;-><init>(III)V

    .line 101
    .restart local v1    # "result":Ljavax/microedition/lcdui/Font;
    sget-object v2, Ljavax/microedition/lcdui/Font;->fonts:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-object v1
.end method


# virtual methods
.method public charWidth(C)I
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 187
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getFontManager()Lorg/microemu/device/FontManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/microemu/device/FontManager;->charWidth(Ljavax/microedition/lcdui/Font;C)I

    move-result v0

    return v0
.end method

.method public charsWidth([CII)I
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 193
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getFontManager()Lorg/microemu/device/FontManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/microemu/device/FontManager;->charsWidth(Ljavax/microedition/lcdui/Font;[CII)I

    move-result v0

    return v0
.end method

.method public getBaselinePosition()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Ljavax/microedition/lcdui/Font;->baselinePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getFontManager()Lorg/microemu/device/FontManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/FontManager;->getBaselinePosition(Ljavax/microedition/lcdui/Font;)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Font;->baselinePosition:I

    .line 181
    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/Font;->baselinePosition:I

    return v0
.end method

.method public getFace()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Ljavax/microedition/lcdui/Font;->face:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Ljavax/microedition/lcdui/Font;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getFontManager()Lorg/microemu/device/FontManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/FontManager;->getHeight(Ljavax/microedition/lcdui/Font;)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Font;->height:I

    .line 171
    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/Font;->height:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Ljavax/microedition/lcdui/Font;->size:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ljavax/microedition/lcdui/Font;->style:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Ljavax/microedition/lcdui/Font;->style:I

    iget v1, p0, Ljavax/microedition/lcdui/Font;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Ljavax/microedition/lcdui/Font;->face:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ljavax/microedition/lcdui/Font;->style:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Ljavax/microedition/lcdui/Font;->style:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlain()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Ljavax/microedition/lcdui/Font;->style:I

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderlined()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Ljavax/microedition/lcdui/Font;->style:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getFontManager()Lorg/microemu/device/FontManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/microemu/device/FontManager;->stringWidth(Ljavax/microedition/lcdui/Font;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public substringWidth(Ljava/lang/String;II)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 205
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getFontManager()Lorg/microemu/device/FontManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/microemu/device/FontManager;->substringWidth(Ljavax/microedition/lcdui/Font;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

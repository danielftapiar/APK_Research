.class public Ljavax/microedition/lcdui/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field public static final VCENTER:I = 0x2


# instance fields
.field private translateX:I

.field private translateY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->translateX:I

    .line 53
    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->translateY:I

    return-void
.end method

.method private implementationError()V
    .locals 3

    .prologue
    .line 239
    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Must be implemented in DisplayGraphics"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 243
    return-void
.end method


# virtual methods
.method public clipRect(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 57
    return-void
.end method

.method public copyArea(IIIIIII)V
    .locals 0
    .param p1, "x_src"    # I
    .param p2, "y_src"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "x_dest"    # I
    .param p6, "y_dest"    # I
    .param p7, "anchor"    # I

    .prologue
    .line 228
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 229
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 61
    return-void
.end method

.method public drawChar(CIII)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 64
    const/4 v1, 0x1

    new-array v0, v1, [C

    .line 65
    .local v0, "carr":[C
    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 66
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 67
    return-void
.end method

.method public drawChars([CIIIII)V
    .locals 1
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 71
    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;III)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 75
    return-void
.end method

.method public drawLine(IIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 79
    return-void
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 0
    .param p1, "rgbData"    # [I
    .param p2, "offset"    # I
    .param p3, "scanlength"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "processAlpha"    # Z

    .prologue
    .line 219
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 220
    return-void
.end method

.method public drawRect(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 83
    return-void
.end method

.method public drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 0
    .param p1, "src"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x_src"    # I
    .param p3, "y_src"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "transform"    # I
    .param p7, "x_dst"    # I
    .param p8, "y_dst"    # I
    .param p9, "anchor"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 215
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 87
    return-void
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 91
    return-void
.end method

.method public drawSubstring(Ljava/lang/String;IIIII)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 95
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 99
    return-void
.end method

.method public fillRect(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 103
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 107
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I

    .prologue
    .line 223
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 224
    return-void
.end method

.method public getBlueComponent()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getClipHeight()I
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public getClipWidth()I
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 122
    const/4 v0, -0x1

    return v0
.end method

.method public getClipX()I
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getClipY()I
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 140
    const/4 v0, -0x1

    return v0
.end method

.method public getDisplayColor(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 234
    const/4 v0, -0x1

    return v0
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrayScale()I
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getRedComponent()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getGreenComponent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getBlueComponent()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getGreenComponent()I
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRedComponent()I
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getStrokeStyle()I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->translateX:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->translateY:I

    return v0
.end method

.method public setClip(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 177
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "RGB"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 181
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 184
    move v0, p3

    .line 185
    .local v0, "rgb":I
    shl-int/lit8 v1, p2, 0x8

    add-int/2addr v0, v1

    .line 186
    shl-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    .line 187
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 188
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 191
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 192
    return-void
.end method

.method public setGrayScale(I)V
    .locals 1
    .param p1, "grey"    # I

    .prologue
    .line 195
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 198
    :cond_1
    invoke-virtual {p0, p1, p1, p1}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    .line 199
    return-void
.end method

.method public setStrokeStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Ljavax/microedition/lcdui/Graphics;->implementationError()V

    .line 203
    return-void
.end method

.method public translate(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 206
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->translateX:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->translateX:I

    .line 207
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->translateY:I

    add-int/2addr v0, p2

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->translateY:I

    .line 208
    return-void
.end method

.class public Ljavax/microedition/lcdui/Image;
.super Ljava/lang/Object;
.source "Image.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImage(II)Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 44
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_1
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0xffffff

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/microemu/device/DeviceDisplay;->createImage(IIZI)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/DeviceDisplay;->createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/DeviceDisplay;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "source"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 57
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/DeviceDisplay;->createImage(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;
    .locals 7
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "transform"    # I

    .prologue
    .line 99
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/microemu/device/DeviceDisplay;->createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage([BII)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "imageData"    # [B
    .param p1, "imageOffset"    # I
    .param p2, "imageLength"    # I

    .prologue
    .line 62
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/microemu/device/DeviceDisplay;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "rgb"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "processAlpha"    # Z

    .prologue
    .line 105
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/microemu/device/DeviceDisplay;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getRGB([IIIIIII)V
    .locals 0
    .param p1, "argb"    # [I
    .param p2, "offset"    # I
    .param p3, "scanlenght"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 91
    return-void
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

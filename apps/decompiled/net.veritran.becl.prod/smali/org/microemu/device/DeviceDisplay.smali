.class public interface abstract Lorg/microemu/device/DeviceDisplay;
.super Ljava/lang/Object;
.source "DeviceDisplay.java"


# virtual methods
.method public abstract createImage(IIZI)Ljavax/microedition/lcdui/Image;
.end method

.method public abstract createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createImage(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
.end method

.method public abstract createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;
.end method

.method public abstract createImage([BII)Ljavax/microedition/lcdui/Image;
.end method

.method public abstract createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;
.end method

.method public abstract getFullHeight()I
.end method

.method public abstract getFullWidth()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract isColor()Z
.end method

.method public abstract isFullScreenMode()Z
.end method

.method public abstract numAlphaLevels()I
.end method

.method public abstract numColors()I
.end method

.method public abstract repaint(IIII)V
.end method

.method public abstract setScrollDown(Z)V
.end method

.method public abstract setScrollUp(Z)V
.end method

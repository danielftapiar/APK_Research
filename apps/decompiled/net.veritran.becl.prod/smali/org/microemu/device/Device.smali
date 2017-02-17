.class public interface abstract Lorg/microemu/device/Device;
.super Ljava/lang/Object;
.source "Device.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getButtons()Ljava/util/Vector;
.end method

.method public abstract getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;
.end method

.method public abstract getFontManager()Lorg/microemu/device/FontManager;
.end method

.method public abstract getInputMethod()Lorg/microemu/device/InputMethod;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNormalImage()Ljavax/microedition/lcdui/Image;
.end method

.method public abstract getOverImage()Ljavax/microedition/lcdui/Image;
.end method

.method public abstract getPressedImage()Ljavax/microedition/lcdui/Image;
.end method

.method public abstract getSoftButtons()Ljava/util/Vector;
.end method

.method public abstract getSystemProperties()Ljava/util/Map;
.end method

.method public abstract getUIFactory()Lorg/microemu/device/ui/UIFactory;
.end method

.method public abstract hasPointerEvents()Z
.end method

.method public abstract hasPointerMotionEvents()Z
.end method

.method public abstract hasRepeatEvents()Z
.end method

.method public abstract init()V
.end method

.method public abstract vibrate(I)Z
.end method

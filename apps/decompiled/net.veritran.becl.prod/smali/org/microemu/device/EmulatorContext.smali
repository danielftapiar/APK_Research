.class public interface abstract Lorg/microemu/device/EmulatorContext;
.super Ljava/lang/Object;
.source "EmulatorContext.java"


# virtual methods
.method public abstract getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;
.end method

.method public abstract getDeviceFontManager()Lorg/microemu/device/FontManager;
.end method

.method public abstract getDeviceInputMethod()Lorg/microemu/device/InputMethod;
.end method

.method public abstract getDisplayComponent()Lorg/microemu/DisplayComponent;
.end method

.method public abstract getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract platformRequest(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation
.end method

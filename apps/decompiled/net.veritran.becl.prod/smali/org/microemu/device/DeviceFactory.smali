.class public Lorg/microemu/device/DeviceFactory;
.super Ljava/lang/Object;
.source "DeviceFactory.java"


# static fields
.field private static device:Lorg/microemu/device/Device;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDevice()Lorg/microemu/device/Device;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/microemu/device/DeviceFactory;->device:Lorg/microemu/device/Device;

    return-object v0
.end method

.method public static setDevice(Lorg/microemu/device/Device;)V
    .locals 1
    .param p0, "device"    # Lorg/microemu/device/Device;

    .prologue
    .line 41
    sget-object v0, Lorg/microemu/device/DeviceFactory;->device:Lorg/microemu/device/Device;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lorg/microemu/device/DeviceFactory;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->destroy()V

    .line 44
    :cond_0
    invoke-interface {p0}, Lorg/microemu/device/Device;->init()V

    .line 45
    sput-object p0, Lorg/microemu/device/DeviceFactory;->device:Lorg/microemu/device/Device;

    .line 46
    return-void
.end method

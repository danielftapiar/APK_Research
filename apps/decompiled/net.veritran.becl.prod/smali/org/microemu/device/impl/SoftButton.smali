.class public interface abstract Lorg/microemu/device/impl/SoftButton;
.super Ljava/lang/Object;
.source "SoftButton.java"


# static fields
.field public static final TYPE_COMMAND:I = 0x1

.field public static final TYPE_ICON:I = 0x2


# virtual methods
.method public abstract getCommand()Ljavax/microedition/lcdui/Command;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPaintable()Lorg/microemu/device/impl/Rectangle;
.end method

.method public abstract getType()I
.end method

.method public abstract isPressed()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract preferredCommandType(Ljavax/microedition/lcdui/Command;)Z
.end method

.method public abstract setCommand(Ljavax/microedition/lcdui/Command;)V
.end method

.method public abstract setPressed(Z)V
.end method

.method public abstract setVisible(Z)V
.end method

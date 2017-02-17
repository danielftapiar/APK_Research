.class public interface abstract Lorg/microemu/device/ui/FormUI;
.super Ljava/lang/Object;
.source "FormUI.java"

# interfaces
.implements Lorg/microemu/device/ui/DisplayableUI;


# virtual methods
.method public abstract append(Lorg/microemu/device/ui/ItemUI;)I
.end method

.method public abstract delete(I)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract getItemStateListener()Ljavax/microedition/lcdui/ItemStateListener;
.end method

.method public abstract insert(ILorg/microemu/device/ui/ItemUI;)V
.end method

.method public abstract set(ILorg/microemu/device/ui/ItemUI;)V
.end method

.method public abstract setItemStateListener(Ljavax/microedition/lcdui/ItemStateListener;)V
.end method

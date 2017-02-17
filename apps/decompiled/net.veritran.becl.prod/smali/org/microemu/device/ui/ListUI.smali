.class public interface abstract Lorg/microemu/device/ui/ListUI;
.super Ljava/lang/Object;
.source "ListUI.java"

# interfaces
.implements Lorg/microemu/device/ui/DisplayableUI;


# virtual methods
.method public abstract append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
.end method

.method public abstract delete(I)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract setSelectCommand(Ljavax/microedition/lcdui/Command;)V
.end method

.method public abstract setSelectedIndex(IZ)V
.end method

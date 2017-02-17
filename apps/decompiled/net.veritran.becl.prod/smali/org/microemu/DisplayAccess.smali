.class public interface abstract Lorg/microemu/DisplayAccess;
.super Ljava/lang/Object;
.source "DisplayAccess.java"


# virtual methods
.method public abstract clean()V
.end method

.method public abstract commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
.end method

.method public abstract getCurrent()Ljavax/microedition/lcdui/Displayable;
.end method

.method public abstract getCurrentUI()Lorg/microemu/device/ui/DisplayableUI;
.end method

.method public abstract getDisplay()Ljavax/microedition/lcdui/Display;
.end method

.method public abstract hideNotify()V
.end method

.method public abstract isFullScreenMode()Z
.end method

.method public abstract keyPressed(I)V
.end method

.method public abstract keyReleased(I)V
.end method

.method public abstract keyRepeated(I)V
.end method

.method public abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract pointerDragged(II)V
.end method

.method public abstract pointerPressed(II)V
.end method

.method public abstract pointerReleased(II)V
.end method

.method public abstract repaint()V
.end method

.method public abstract setCurrent(Ljavax/microedition/lcdui/Displayable;)V
.end method

.method public abstract showNotify()V
.end method

.method public abstract sizeChanged()V
.end method

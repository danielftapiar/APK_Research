.class public interface abstract Ljavax/microedition/lcdui/Choice;
.super Ljava/lang/Object;
.source "Choice.java"


# static fields
.field public static final EXCLUSIVE:I = 0x1

.field public static final IMPLICIT:I = 0x3

.field public static final MULTIPLE:I = 0x2

.field public static final POPUP:I = 0x4

.field public static final TEXT_WRAP_DEFAULT:I = 0x0

.field public static final TEXT_WRAP_OFF:I = 0x2

.field public static final TEXT_WRAP_ON:I = 0x1


# virtual methods
.method public abstract append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
.end method

.method public abstract delete(I)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract getFitPolicy()I
.end method

.method public abstract getFont(I)Ljavax/microedition/lcdui/Font;
.end method

.method public abstract getImage(I)Ljavax/microedition/lcdui/Image;
.end method

.method public abstract getSelectedFlags([Z)I
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
.end method

.method public abstract isSelected(I)Z
.end method

.method public abstract set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
.end method

.method public abstract setFitPolicy(I)V
.end method

.method public abstract setFont(ILjavax/microedition/lcdui/Font;)V
.end method

.method public abstract setSelectedFlags([Z)V
.end method

.method public abstract setSelectedIndex(IZ)V
.end method

.method public abstract size()I
.end method

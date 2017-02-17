.class public interface abstract Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/metalev/multitouch/controller/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiTouchObjectCanvas"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getPositionAndScale$71d97c1e(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;",
            ")V"
        }
    .end annotation
.end method

.method public abstract selectObject$f4318(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setPositionAndScale$7a677017(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;",
            ")Z"
        }
    .end annotation
.end method

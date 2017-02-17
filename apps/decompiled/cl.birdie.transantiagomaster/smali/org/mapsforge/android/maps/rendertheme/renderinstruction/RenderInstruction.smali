.class public interface abstract Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;
.super Ljava/lang/Object;
.source "RenderInstruction.java"


# virtual methods
.method public abstract renderNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract renderWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scaleStrokeWidth(F)V
.end method

.method public abstract scaleTextSize(F)V
.end method

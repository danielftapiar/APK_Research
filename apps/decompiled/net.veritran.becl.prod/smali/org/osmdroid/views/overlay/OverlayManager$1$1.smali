.class Lorg/osmdroid/views/overlay/OverlayManager$1$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/OverlayManager$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/osmdroid/views/overlay/Overlay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/osmdroid/views/overlay/OverlayManager$1;

.field final synthetic val$i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/OverlayManager$1;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayManager$1$1;->this$1:Lorg/osmdroid/views/overlay/OverlayManager$1;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/OverlayManager$1$1;->val$i:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager$1$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/OverlayManager$1$1;->next()Lorg/osmdroid/views/overlay/Overlay;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/osmdroid/views/overlay/Overlay;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager$1$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager$1$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 97
    return-void
.end method

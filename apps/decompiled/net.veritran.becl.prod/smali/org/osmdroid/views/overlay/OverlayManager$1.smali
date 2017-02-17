.class Lorg/osmdroid/views/overlay/OverlayManager$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/osmdroid/views/overlay/Overlay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/OverlayManager;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/OverlayManager;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayManager$1;->this$0:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lorg/osmdroid/views/overlay/OverlayManager$1;->this$0:Lorg/osmdroid/views/overlay/OverlayManager;

    # getter for: Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lorg/osmdroid/views/overlay/OverlayManager;->access$000(Lorg/osmdroid/views/overlay/OverlayManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager$1;->this$0:Lorg/osmdroid/views/overlay/OverlayManager;

    # getter for: Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lorg/osmdroid/views/overlay/OverlayManager;->access$000(Lorg/osmdroid/views/overlay/OverlayManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 83
    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/osmdroid/views/overlay/Overlay;>;"
    new-instance v1, Lorg/osmdroid/views/overlay/OverlayManager$1$1;

    invoke-direct {v1, p0, v0}, Lorg/osmdroid/views/overlay/OverlayManager$1$1;-><init>(Lorg/osmdroid/views/overlay/OverlayManager$1;Ljava/util/ListIterator;)V

    return-object v1
.end method

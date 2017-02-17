.class final Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;
.super Ljava/lang/Object;
.source "OSMDroidMapView.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSMRemover"
.end annotation


# instance fields
.field overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "ols":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;->this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;->overlays:Ljava/util/List;

    .line 421
    return-void
.end method


# virtual methods
.method public final quitar(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 425
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;->overlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

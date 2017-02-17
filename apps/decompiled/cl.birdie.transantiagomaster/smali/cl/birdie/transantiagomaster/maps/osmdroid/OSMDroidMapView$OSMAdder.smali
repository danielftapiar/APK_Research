.class final Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;
.super Ljava/lang/Object;
.source "OSMDroidMapView.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSMAdder"
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
    .line 433
    .local p2, "ols":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;->this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;->overlays:Ljava/util/List;

    .line 435
    return-void
.end method


# virtual methods
.method public final anadir(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 439
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;->overlays:Ljava/util/List;

    check-cast p1, Lorg/osmdroid/views/overlay/Overlay;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

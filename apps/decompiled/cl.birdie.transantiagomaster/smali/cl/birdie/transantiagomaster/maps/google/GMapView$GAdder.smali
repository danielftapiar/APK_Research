.class final Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;
.super Ljava/lang/Object;
.source "GMapView.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/maps/google/GMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GAdder"
.end annotation


# instance fields
.field overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/maps/google/GMapView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, "ols":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;->this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;->overlays:Ljava/util/List;

    .line 302
    return-void
.end method


# virtual methods
.method public final anadir(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 306
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;->overlays:Ljava/util/List;

    check-cast p1, Lcom/google/android/maps/Overlay;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

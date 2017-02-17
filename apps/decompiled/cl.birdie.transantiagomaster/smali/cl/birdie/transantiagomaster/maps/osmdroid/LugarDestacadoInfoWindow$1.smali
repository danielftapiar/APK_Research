.class final Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;
.super Ljava/lang/Object;
.source "LugarDestacadoInfoWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;

.field private final synthetic val$mapView:Lorg/osmdroid/views/MapView;

.field private final synthetic val$rm:Lcl/birdie/transantiagomaster/newobjetos/Marker;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;Lcl/birdie/transantiagomaster/newobjetos/Marker;Lorg/osmdroid/views/MapView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$rm:Lcl/birdie/transantiagomaster/newobjetos/Marker;

    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$mapView:Lorg/osmdroid/views/MapView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$rm:Lcl/birdie/transantiagomaster/newobjetos/Marker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$rm:Lcl/birdie/transantiagomaster/newobjetos/Marker;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$mapView:Lorg/osmdroid/views/MapView;

    check-cast v1, Lcl/birdie/transantiagomaster/ITSMMapView;

    .line 77
    invoke-interface {v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->getListener()Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$rm:Lcl/birdie/transantiagomaster/newobjetos/Marker;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onLaunchURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LugarDestacadoInfoWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "excepcion al procesar url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;->val$rm:Lcl/birdie/transantiagomaster/newobjetos/Marker;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

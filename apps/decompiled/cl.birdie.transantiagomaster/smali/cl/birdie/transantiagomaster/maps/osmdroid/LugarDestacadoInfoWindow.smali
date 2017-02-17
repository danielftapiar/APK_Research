.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;
.super Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;
.source "LugarDestacadoInfoWindow.java"


# instance fields
.field private imagen:Landroid/widget/ImageView;

.field private layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

.field private txtDescripcion:Landroid/widget/TextView;

.field private txtNombre:Landroid/widget/TextView;

.field private txtUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 29
    const v0, 0x7f030017

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 30
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 33
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->imagen:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtNombre:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtDescripcion:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtUrl:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public final onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V
    .locals 9
    .param p1, "item"    # Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 42
    invoke-super {p0, p1}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V

    .line 45
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getRelatedObject()Ljava/lang/Object;

    move-result-object v2

    .line 47
    .local v2, "obj":Ljava/lang/Object;
    instance-of v5, v2, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 48
    check-cast v3, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    .line 49
    .local v3, "rm":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 51
    .local v1, "mapView":Lorg/osmdroid/views/MapView;
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtNombre:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getNombre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtDescripcion:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getDescripcion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/newobjetos/Layer;->tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    sget-object v6, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_BUS:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getImagen()Ljava/lang/String;

    move-result-object v4

    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "imagen balloon: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->imagen:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->imagen:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 63
    .end local v4    # "tmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tmp":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 64
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;

    invoke-direct {v0, p0, v3, v1}, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow$1;-><init>(Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;Lcl/birdie/transantiagomaster/newobjetos/Marker;Lorg/osmdroid/views/MapView;)V

    .line 87
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->imagen:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    .end local v1    # "mapView":Lorg/osmdroid/views/MapView;
    .end local v3    # "rm":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_0
    return-void

    .line 61
    .restart local v1    # "mapView":Lorg/osmdroid/views/MapView;
    .restart local v3    # "rm":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    :cond_1
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->imagen:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 67
    .restart local v4    # "tmp":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

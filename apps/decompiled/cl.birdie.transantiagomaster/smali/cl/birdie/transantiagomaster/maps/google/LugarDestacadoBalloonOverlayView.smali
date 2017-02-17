.class public final Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;
.super Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
.source "LugarDestacadoBalloonOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/google/android/maps/OverlayItem;",
        ">",
        "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private imagen:Landroid/widget/ImageView;

.field private layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

.field private txtDescripcion:Landroid/widget/TextView;

.field private txtNombre:Landroid/widget/TextView;

.field private txtUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "balloonBottomOffset"    # I
    .param p3, "layer"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 31
    .local p0, "this":Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;, "Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView<TItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 33
    return-void
.end method


# virtual methods
.method protected final setBalloonData$e1ee0c8(Lcom/google/android/maps/OverlayItem;)V
    .locals 6
    .param p1, "item"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .local p0, "this":Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;, "Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView<TItem;>;"
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 56
    instance-of v2, p1, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    .line 59
    .local v0, "rm":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtNombre:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getNombre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtDescripcion:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Layer;->tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    sget-object v3, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_BUS:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getImagen()Ljava/lang/String;

    move-result-object v1

    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imagen balloon: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->imagen:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->imagen:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 71
    .end local v1    # "tmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tmp":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 72
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v0    # "rm":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 69
    .restart local v0    # "rm":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    :cond_1
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->imagen:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtUrl:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final setupView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    .line 40
    .local p0, "this":Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;, "Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView<TItem;>;"
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/LayoutInflater;

    .line 41
    const v2, 0x7f030016

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->imagen:Landroid/widget/ImageView;

    .line 49
    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtNombre:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtDescripcion:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;->txtUrl:Landroid/widget/TextView;

    .line 52
    return-void
.end method

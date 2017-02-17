.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;
.super Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;
.source "ReclamoInfoWindow.java"


# instance fields
.field private imagePost:Landroid/widget/ImageView;

.field private imageUpload:Landroid/widget/ImageView;

.field private layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

.field private textCaption:Landroid/widget/TextView;

.field private textObjeto:Landroid/widget/TextView;

.field private textPost:Landroid/widget/TextView;

.field private textUsername:Landroid/widget/TextView;

.field private txtMensaje1:Landroid/widget/TextView;

.field private txtMensaje2:Landroid/widget/TextView;

.field private txtMensaje3:Landroid/widget/TextView;

.field private txtTitulo1:Landroid/widget/TextView;

.field private txtTitulo2:Landroid/widget/TextView;

.field private txtTitulo3:Landroid/widget/TextView;

.field private txtTituloMensajes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 36
    const v0, 0x7f03001a

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 37
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 40
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textUsername:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textPost:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textCaption:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textObjeto:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->imagePost:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->imageUpload:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTituloMensajes:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo1:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo2:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo3:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje1:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje2:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje3:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public final onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V
    .locals 31
    .param p1, "arg0"    # Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    .prologue
    .line 64
    invoke-super/range {p0 .. p1}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getRelatedObject()Ljava/lang/Object;

    move-result-object v8

    .line 68
    .local v8, "item":Ljava/lang/Object;
    instance-of v0, v8, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;

    move/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v20, v8

    .line 69
    check-cast v20, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;

    .line 70
    .local v20, "rm":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    const/4 v7, 0x0

    .line 72
    .local v7, "imagenUp":Z
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserId()Ljava/lang/String;

    move-result-object v19

    .line 73
    .local v19, "ownid":Ljava/lang/String;
    const-string v16, ""

    .line 74
    .local v16, "objeto":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "l"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 76
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Servicio "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relcode:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 80
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textObjeto:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/16 v17, 0x0

    .line 83
    .local v17, "otros":I
    const/16 v25, 0x0

    .line 84
    .local v25, "tu":Z
    const/4 v5, 0x0

    .local v5, "destuname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, "destuid":Ljava/lang/String;
    const/16 v18, 0x0

    .line 87
    .local v18, "ownComment":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, "coms":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textUsername:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v20 .. v20}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->getNombre()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    move-object/from16 v0, v20

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->comentarios:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_5

    .line 127
    const/4 v11, 0x0

    .local v11, "m3":Z
    move v10, v11

    .local v10, "m2":I
    move v9, v11

    .local v9, "m1":I
    move/from16 v24, v11

    .line 128
    .local v24, "tm":I
    const/4 v15, 0x0

    .local v15, "msg3":Ljava/lang/String;
    move-object v14, v15

    .local v14, "msg2":Ljava/lang/Object;
    move-object v13, v15

    .local v13, "msg1":Ljava/lang/Object;
    move-object/from16 v23, v15

    .local v23, "tit3":Ljava/lang/Object;
    move-object/from16 v22, v15

    .local v22, "tit2":Ljava/lang/Object;
    move-object/from16 v21, v15

    .line 131
    .local v21, "tit1":Ljava/lang/Object;
    if-eqz v25, :cond_c

    .line 132
    move-object/from16 v4, v19

    .line 133
    const-string v12, "Tu "

    .line 134
    .local v12, "message":Ljava/lang/String;
    if-nez v17, :cond_9

    .line 135
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "enviaste este reclamo."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 144
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_2

    .line 145
    const/16 v24, 0x1

    .line 146
    .local v24, "tm":Z
    const/4 v6, 0x0

    .end local v9    # "m1":I
    .end local v10    # "m2":I
    .end local v13    # "msg1":Ljava/lang/Object;
    .end local v14    # "msg2":Ljava/lang/Object;
    .end local v21    # "tit1":Ljava/lang/Object;
    .end local v22    # "tit2":Ljava/lang/Object;
    .end local v23    # "tit3":Ljava/lang/Object;
    .local v6, "i":I
    :goto_3
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ge v6, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v6, v0, :cond_b

    .line 199
    .end local v6    # "i":I
    .end local v24    # "tm":Z
    :cond_2
    if-nez v24, :cond_e

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTituloMensajes:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_4
    if-nez v9, :cond_f

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo1:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje1:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_5
    if-nez v10, :cond_10

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo2:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje2:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_6
    if-nez v11, :cond_11

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo3:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje3:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textPost:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "http://graph.facebook.com/"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/picture"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->imagePost:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 235
    if-nez v7, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textCaption:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->imageUpload:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .end local v3    # "coms":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;>;"
    .end local v4    # "destuid":Ljava/lang/String;
    .end local v5    # "destuname":Ljava/lang/String;
    .end local v7    # "imagenUp":Z
    .end local v11    # "m3":Z
    .end local v12    # "message":Ljava/lang/String;
    .end local v15    # "msg3":Ljava/lang/String;
    .end local v16    # "objeto":Ljava/lang/String;
    .end local v17    # "otros":I
    .end local v18    # "ownComment":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .end local v19    # "ownid":Ljava/lang/String;
    .end local v20    # "rm":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    .end local v25    # "tu":Z
    :cond_3
    return-void

    .line 77
    .restart local v7    # "imagenUp":Z
    .restart local v16    # "objeto":Ljava/lang/String;
    .restart local v19    # "ownid":Ljava/lang/String;
    .restart local v20    # "rm":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "s"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 78
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Paradero "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relcode:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 91
    .restart local v3    # "coms":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;>;"
    .restart local v4    # "destuid":Ljava/lang/String;
    .restart local v5    # "destuname":Ljava/lang/String;
    .restart local v17    # "otros":I
    .restart local v18    # "ownComment":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .restart local v25    # "tu":Z
    :cond_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    .line 92
    .local v2, "c":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v27

    .line 93
    .local v27, "userId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "descargando imagen de usuario "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    if-eqz v19, :cond_8

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 99
    const/16 v25, 0x1

    .line 100
    if-nez v18, :cond_6

    .line 101
    move-object/from16 v18, v2

    .line 109
    :cond_6
    :goto_8
    if-nez v5, :cond_7

    .line 110
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 116
    :cond_7
    if-nez v7, :cond_1

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getImage()Ljava/lang/String;

    move-result-object v26

    .local v26, "urlImage":Ljava/lang/String;
    if-eqz v26, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->imageUpload:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->imageUpload:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textCaption:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->textCaption:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const-string v30, "\u00daltima imagen enviada"

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 104
    .end local v26    # "urlImage":Ljava/lang/String;
    :cond_8
    add-int/lit8 v17, v17, 0x1

    .line 105
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_6

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_6

    .line 106
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 137
    .end local v2    # "c":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .end local v27    # "userId":Ljava/lang/String;
    .restart local v9    # "m1":I
    .restart local v10    # "m2":I
    .restart local v11    # "m3":Z
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v13    # "msg1":Ljava/lang/Object;
    .restart local v14    # "msg2":Ljava/lang/Object;
    .restart local v15    # "msg3":Ljava/lang/String;
    .restart local v21    # "tit1":Ljava/lang/Object;
    .restart local v22    # "tit2":Ljava/lang/Object;
    .restart local v23    # "tit3":Ljava/lang/Object;
    .local v24, "tm":I
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "y "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 138
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 139
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "otro usuario"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 142
    :goto_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " enviaron este reclamo."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 141
    :cond_a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "otros "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " usuarios"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 147
    .end local v9    # "m1":I
    .end local v10    # "m2":I
    .end local v13    # "msg1":Ljava/lang/Object;
    .end local v14    # "msg2":Ljava/lang/Object;
    .end local v21    # "tit1":Ljava/lang/Object;
    .end local v22    # "tit2":Ljava/lang/Object;
    .end local v23    # "tit3":Ljava/lang/Object;
    .restart local v6    # "i":I
    .local v24, "tm":Z
    :cond_b
    packed-switch v6, :pswitch_data_0

    .line 146
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 149
    :pswitch_0
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v21

    .line 150
    .local v21, "tit1":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v28, "\""

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "msg1":Ljava/lang/String;
    const/4 v9, 0x1

    .line 152
    .local v9, "m1":Z
    goto :goto_a

    .line 154
    .end local v9    # "m1":Z
    .end local v13    # "msg1":Ljava/lang/String;
    .end local v21    # "tit1":Ljava/lang/String;
    :pswitch_1
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v22

    .line 155
    .local v22, "tit2":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v28, "\""

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "msg2":Ljava/lang/String;
    const/4 v10, 0x1

    .line 157
    .local v10, "m2":Z
    goto :goto_a

    .line 159
    .end local v10    # "m2":Z
    .end local v14    # "msg2":Ljava/lang/String;
    .end local v22    # "tit2":Ljava/lang/String;
    :pswitch_2
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v23

    .line 160
    .local v23, "tit3":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v28, "\""

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 161
    const/4 v11, 0x1

    goto/16 :goto_a

    .line 167
    .end local v6    # "i":I
    .end local v12    # "message":Ljava/lang/String;
    .local v9, "m1":I
    .local v10, "m2":I
    .local v13, "msg1":Ljava/lang/Object;
    .local v14, "msg2":Ljava/lang/Object;
    .local v21, "tit1":Ljava/lang/Object;
    .local v22, "tit2":Ljava/lang/Object;
    .local v23, "tit3":Ljava/lang/Object;
    .local v24, "tm":I
    :cond_c
    move-object v12, v5

    .line 168
    .restart local v12    # "message":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " y "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 169
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 170
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "otro usuario"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 173
    :goto_b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " enviaron este reclamo."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 175
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_2

    .line 176
    const/16 v24, 0x1

    .line 177
    .local v24, "tm":Z
    const/4 v6, 0x1

    .end local v9    # "m1":I
    .end local v10    # "m2":I
    .end local v13    # "msg1":Ljava/lang/Object;
    .end local v14    # "msg2":Ljava/lang/Object;
    .end local v21    # "tit1":Ljava/lang/Object;
    .end local v22    # "tit2":Ljava/lang/Object;
    .end local v23    # "tit3":Ljava/lang/Object;
    .restart local v6    # "i":I
    :goto_c
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v6, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v6, v0, :cond_2

    .line 178
    packed-switch v6, :pswitch_data_1

    .line 177
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 172
    .end local v6    # "i":I
    .restart local v9    # "m1":I
    .restart local v10    # "m2":I
    .restart local v13    # "msg1":Ljava/lang/Object;
    .restart local v14    # "msg2":Ljava/lang/Object;
    .restart local v21    # "tit1":Ljava/lang/Object;
    .restart local v22    # "tit2":Ljava/lang/Object;
    .restart local v23    # "tit3":Ljava/lang/Object;
    .local v24, "tm":I
    :cond_d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "otros "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " usuarios"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    .line 180
    .end local v9    # "m1":I
    .end local v10    # "m2":I
    .end local v13    # "msg1":Ljava/lang/Object;
    .end local v14    # "msg2":Ljava/lang/Object;
    .end local v21    # "tit1":Ljava/lang/Object;
    .end local v22    # "tit2":Ljava/lang/Object;
    .end local v23    # "tit3":Ljava/lang/Object;
    .restart local v6    # "i":I
    .local v24, "tm":Z
    :pswitch_3
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v21

    .line 181
    .local v21, "tit1":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v28, "\""

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, "msg1":Ljava/lang/String;
    const/4 v9, 0x1

    .line 183
    .local v9, "m1":Z
    goto :goto_d

    .line 185
    .end local v9    # "m1":Z
    .end local v13    # "msg1":Ljava/lang/String;
    .end local v21    # "tit1":Ljava/lang/String;
    :pswitch_4
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v22

    .line 186
    .local v22, "tit2":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v28, "\""

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 187
    .local v14, "msg2":Ljava/lang/String;
    const/4 v10, 0x1

    .line 188
    .local v10, "m2":Z
    goto/16 :goto_d

    .line 190
    .end local v10    # "m2":Z
    .end local v14    # "msg2":Ljava/lang/String;
    .end local v22    # "tit2":Ljava/lang/String;
    :pswitch_5
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v23

    .line 191
    .local v23, "tit3":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v28, "\""

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v28 .. v28}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 192
    const/4 v11, 0x1

    goto/16 :goto_d

    .line 202
    .end local v6    # "i":I
    .end local v23    # "tit3":Ljava/lang/String;
    .end local v24    # "tm":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTituloMensajes:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 208
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo1:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje1:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo1:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje1:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 217
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo2:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje2:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo2:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje2:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 226
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo3:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje3:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtTitulo3:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;->txtMensaje3:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 178
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

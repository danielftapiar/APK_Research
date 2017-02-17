.class public final Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;
.super Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
.source "ReclamoBalloonOverlayView.java"


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
.method public constructor <init>(Landroid/content/Context;ILcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "balloonBottomOffset"    # I
    .param p3, "layer"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 48
    .local p0, "this":Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;, "Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView<TItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 50
    return-void
.end method


# virtual methods
.method protected final setBalloonData$e1ee0c8(Lcom/google/android/maps/OverlayItem;)V
    .locals 34
    .param p1, "item"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 82
    .local p0, "this":Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;, "Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView<TItem;>;"
    move-object/from16 v0, p1

    instance-of v0, v0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;

    move/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v23, p1

    .line 83
    check-cast v23, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;

    .line 84
    .local v23, "rm":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    const/4 v9, 0x0

    .line 86
    .local v9, "imagenUp":Z
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserId()Ljava/lang/String;

    move-result-object v21

    .line 87
    .local v21, "ownfbid":Ljava/lang/String;
    sget-object v31, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 89
    .local v22, "owntwid":Ljava/lang/String;
    const-string v18, ""

    .line 90
    .local v18, "objeto":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "l"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 92
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Servicio "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relcode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 96
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textObjeto:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/16 v19, 0x0

    .line 99
    .local v19, "otros":I
    const/16 v28, 0x0

    .line 100
    .local v28, "tu":Z
    const/4 v7, 0x0

    .local v7, "destuname":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "destuid":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "destprofilepic":Ljava/lang/String;
    const/4 v4, 0x0

    .line 102
    .local v4, "destnetwork":Ljava/lang/String;
    const/16 v20, 0x0

    .line 103
    .local v20, "ownComment":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v3, "coms":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textUsername:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v23 .. v23}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->getNombre()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, v23

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->comentarios:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_1
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_6

    .line 148
    const/4 v12, 0x0

    .local v12, "m3":Z
    move v11, v12

    .local v11, "m2":I
    move v10, v12

    .local v10, "m1":I
    move/from16 v27, v12

    .line 149
    .local v27, "tm":I
    const/16 v16, 0x0

    .local v16, "msg3":Ljava/lang/String;
    move-object/from16 v15, v16

    .local v15, "msg2":Ljava/lang/Object;
    move-object/from16 v14, v16

    .local v14, "msg1":Ljava/lang/Object;
    move-object/from16 v26, v16

    .local v26, "tit3":Ljava/lang/Object;
    move-object/from16 v25, v16

    .local v25, "tit2":Ljava/lang/Object;
    move-object/from16 v24, v16

    .line 152
    .local v24, "tit1":Ljava/lang/Object;
    if-eqz v28, :cond_f

    .line 153
    invoke-virtual/range {v20 .. v20}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual/range {v20 .. v20}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getProfilePic()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual/range {v20 .. v20}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getNetwork()Ljava/lang/String;

    move-result-object v4

    .line 156
    const-string v13, "Tu "

    .line 157
    .local v13, "message":Ljava/lang/String;
    if-nez v19, :cond_c

    .line 158
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "enviaste este reclamo."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 167
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_2

    .line 168
    const/16 v27, 0x1

    .line 169
    .local v27, "tm":Z
    const/4 v8, 0x0

    .end local v10    # "m1":I
    .end local v11    # "m2":I
    .end local v14    # "msg1":Ljava/lang/Object;
    .end local v15    # "msg2":Ljava/lang/Object;
    .end local v24    # "tit1":Ljava/lang/Object;
    .end local v25    # "tit2":Ljava/lang/Object;
    .end local v26    # "tit3":Ljava/lang/Object;
    .local v8, "i":I
    :goto_3
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ge v8, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v8, v0, :cond_e

    .line 222
    .end local v8    # "i":I
    .end local v27    # "tm":Z
    :cond_2
    if-nez v27, :cond_11

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTituloMensajes:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :goto_4
    if-nez v10, :cond_12

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :goto_5
    if-nez v11, :cond_13

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo2:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje2:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :goto_6
    if-nez v12, :cond_14

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo3:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje3:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textPost:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    if-eqz v4, :cond_3

    .line 258
    const-string v31, "F"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 259
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "http://graph.facebook.com/"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/picture"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imagePost:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 264
    :cond_3
    :goto_8
    if-nez v9, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textCaption:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imageUpload:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    .end local v3    # "coms":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;>;"
    .end local v4    # "destnetwork":Ljava/lang/String;
    .end local v5    # "destprofilepic":Ljava/lang/String;
    .end local v6    # "destuid":Ljava/lang/String;
    .end local v7    # "destuname":Ljava/lang/String;
    .end local v9    # "imagenUp":Z
    .end local v12    # "m3":Z
    .end local v13    # "message":Ljava/lang/String;
    .end local v16    # "msg3":Ljava/lang/String;
    .end local v18    # "objeto":Ljava/lang/String;
    .end local v19    # "otros":I
    .end local v20    # "ownComment":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .end local v21    # "ownfbid":Ljava/lang/String;
    .end local v22    # "owntwid":Ljava/lang/String;
    .end local v23    # "rm":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    .end local v28    # "tu":Z
    :cond_4
    return-void

    .line 93
    .restart local v9    # "imagenUp":Z
    .restart local v18    # "objeto":Ljava/lang/String;
    .restart local v21    # "ownfbid":Ljava/lang/String;
    .restart local v22    # "owntwid":Ljava/lang/String;
    .restart local v23    # "rm":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "s"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 94
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Paradero "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relcode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 107
    .restart local v3    # "coms":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;>;"
    .restart local v4    # "destnetwork":Ljava/lang/String;
    .restart local v5    # "destprofilepic":Ljava/lang/String;
    .restart local v6    # "destuid":Ljava/lang/String;
    .restart local v7    # "destuname":Ljava/lang/String;
    .restart local v19    # "otros":I
    .restart local v20    # "ownComment":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .restart local v28    # "tu":Z
    :cond_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    .line 108
    .local v2, "c":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v30

    .line 109
    .local v30, "userId":Ljava/lang/String;
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getNetwork()Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "network":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "descargando imagen de usuario "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    if-eqz v21, :cond_b

    if-eqz v17, :cond_b

    .line 116
    const-string v32, "F"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_8

    .line 117
    :cond_7
    const-string v32, "T"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 118
    :cond_8
    const/16 v28, 0x1

    .line 119
    if-nez v20, :cond_9

    .line 120
    move-object/from16 v20, v2

    .line 128
    :cond_9
    :goto_9
    if-nez v7, :cond_a

    .line 129
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getProfilePic()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getNetwork()Ljava/lang/String;

    move-result-object v4

    .line 137
    :cond_a
    if-nez v9, :cond_1

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getImage()Ljava/lang/String;

    move-result-object v29

    .local v29, "urlImage":Ljava/lang/String;
    if-eqz v29, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imageUpload:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imageUpload:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textCaption:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textCaption:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const-string v33, "\u00daltima imagen enviada"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 123
    .end local v29    # "urlImage":Ljava/lang/String;
    :cond_b
    add-int/lit8 v19, v19, 0x1

    .line 124
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_9

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_9

    .line 125
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 160
    .end local v2    # "c":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .end local v17    # "network":Ljava/lang/String;
    .end local v30    # "userId":Ljava/lang/String;
    .restart local v10    # "m1":I
    .restart local v11    # "m2":I
    .restart local v12    # "m3":Z
    .restart local v13    # "message":Ljava/lang/String;
    .restart local v14    # "msg1":Ljava/lang/Object;
    .restart local v15    # "msg2":Ljava/lang/Object;
    .restart local v16    # "msg3":Ljava/lang/String;
    .restart local v24    # "tit1":Ljava/lang/Object;
    .restart local v25    # "tit2":Ljava/lang/Object;
    .restart local v26    # "tit3":Ljava/lang/Object;
    .local v27, "tm":I
    :cond_c
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "y "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 161
    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 162
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "otro usuario"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 165
    :goto_a
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, " enviaron este reclamo."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 164
    :cond_d
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "otros "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " usuarios"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 170
    .end local v10    # "m1":I
    .end local v11    # "m2":I
    .end local v14    # "msg1":Ljava/lang/Object;
    .end local v15    # "msg2":Ljava/lang/Object;
    .end local v24    # "tit1":Ljava/lang/Object;
    .end local v25    # "tit2":Ljava/lang/Object;
    .end local v26    # "tit3":Ljava/lang/Object;
    .restart local v8    # "i":I
    .local v27, "tm":Z
    :cond_e
    packed-switch v8, :pswitch_data_0

    .line 169
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 172
    :pswitch_0
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v24

    .line 173
    .local v24, "tit1":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v31, "\""

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "msg1":Ljava/lang/String;
    const/4 v10, 0x1

    .line 175
    .local v10, "m1":Z
    goto :goto_b

    .line 177
    .end local v10    # "m1":Z
    .end local v14    # "msg1":Ljava/lang/String;
    .end local v24    # "tit1":Ljava/lang/String;
    :pswitch_1
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v25

    .line 178
    .local v25, "tit2":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v31, "\""

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "msg2":Ljava/lang/String;
    const/4 v11, 0x1

    .line 180
    .local v11, "m2":Z
    goto :goto_b

    .line 182
    .end local v11    # "m2":Z
    .end local v15    # "msg2":Ljava/lang/String;
    .end local v25    # "tit2":Ljava/lang/String;
    :pswitch_2
    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v26

    .line 183
    .local v26, "tit3":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v31, "\""

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 184
    const/4 v12, 0x1

    goto/16 :goto_b

    .line 190
    .end local v8    # "i":I
    .end local v13    # "message":Ljava/lang/String;
    .local v10, "m1":I
    .local v11, "m2":I
    .local v14, "msg1":Ljava/lang/Object;
    .local v15, "msg2":Ljava/lang/Object;
    .local v24, "tit1":Ljava/lang/Object;
    .local v25, "tit2":Ljava/lang/Object;
    .local v26, "tit3":Ljava/lang/Object;
    .local v27, "tm":I
    :cond_f
    move-object v13, v7

    .line 191
    .restart local v13    # "message":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, " y "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 192
    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 193
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "otro usuario"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 196
    :goto_c
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, " enviaron este reclamo."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 198
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_2

    .line 199
    const/16 v27, 0x1

    .line 200
    .local v27, "tm":Z
    const/4 v8, 0x1

    .end local v10    # "m1":I
    .end local v11    # "m2":I
    .end local v14    # "msg1":Ljava/lang/Object;
    .end local v15    # "msg2":Ljava/lang/Object;
    .end local v24    # "tit1":Ljava/lang/Object;
    .end local v25    # "tit2":Ljava/lang/Object;
    .end local v26    # "tit3":Ljava/lang/Object;
    .restart local v8    # "i":I
    :goto_d
    const/16 v31, 0x4

    move/from16 v0, v31

    if-ge v8, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v8, v0, :cond_2

    .line 201
    packed-switch v8, :pswitch_data_1

    .line 200
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 195
    .end local v8    # "i":I
    .restart local v10    # "m1":I
    .restart local v11    # "m2":I
    .restart local v14    # "msg1":Ljava/lang/Object;
    .restart local v15    # "msg2":Ljava/lang/Object;
    .restart local v24    # "tit1":Ljava/lang/Object;
    .restart local v25    # "tit2":Ljava/lang/Object;
    .restart local v26    # "tit3":Ljava/lang/Object;
    .local v27, "tm":I
    :cond_10
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "otros "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " usuarios"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 203
    .end local v10    # "m1":I
    .end local v11    # "m2":I
    .end local v14    # "msg1":Ljava/lang/Object;
    .end local v15    # "msg2":Ljava/lang/Object;
    .end local v24    # "tit1":Ljava/lang/Object;
    .end local v25    # "tit2":Ljava/lang/Object;
    .end local v26    # "tit3":Ljava/lang/Object;
    .restart local v8    # "i":I
    .local v27, "tm":Z
    :pswitch_3
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v24

    .line 204
    .local v24, "tit1":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v31, "\""

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, "msg1":Ljava/lang/String;
    const/4 v10, 0x1

    .line 206
    .local v10, "m1":Z
    goto :goto_e

    .line 208
    .end local v10    # "m1":Z
    .end local v14    # "msg1":Ljava/lang/String;
    .end local v24    # "tit1":Ljava/lang/String;
    :pswitch_4
    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v25

    .line 209
    .local v25, "tit2":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v31, "\""

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, "msg2":Ljava/lang/String;
    const/4 v11, 0x1

    .line 211
    .local v11, "m2":Z
    goto/16 :goto_e

    .line 213
    .end local v11    # "m2":Z
    .end local v15    # "msg2":Ljava/lang/String;
    .end local v25    # "tit2":Ljava/lang/String;
    :pswitch_5
    const/16 v31, 0x3

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getName()Ljava/lang/String;

    move-result-object v26

    .line 214
    .local v26, "tit3":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v31, "\""

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x3

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    invoke-virtual/range {v31 .. v31}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->getMensaje()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 215
    const/4 v12, 0x1

    goto/16 :goto_e

    .line 225
    .end local v8    # "i":I
    .end local v26    # "tit3":Ljava/lang/String;
    .end local v27    # "tm":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTituloMensajes:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 231
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 240
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo2:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje2:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo2:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje2:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 249
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo3:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje3:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo3:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje3:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 260
    :cond_15
    const-string v31, "T"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    if-eqz v5, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imagePost:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_8

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 201
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final setupView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    .line 57
    .local p0, "this":Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;, "Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView<TItem;>;"
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    check-cast v1, Landroid/view/LayoutInflater;

    .line 58
    const v2, 0x7f030019

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textUsername:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textPost:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textCaption:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->textObjeto:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imagePost:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->imageUpload:Landroid/widget/ImageView;

    .line 71
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTituloMensajes:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo1:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo2:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtTitulo3:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje1:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje2:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;->txtMensaje3:Landroid/widget/TextView;

    .line 78
    return-void
.end method

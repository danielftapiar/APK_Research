.class public final Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BarraDerechaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/BarraDerechaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/SocialPost;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 223
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 226
    invoke-virtual/range {p0 .. p1}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;

    .line 227
    .local v11, "post":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    if-nez p2, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f030064

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    :cond_0
    const v14, 0x7f080153

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 231
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v14, v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlFoto:Ljava/lang/String;

    invoke-static {v14, v4}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 232
    const v14, 0x7f080156

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 233
    iget-object v15, v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->nombreUsuario:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const v14, 0x7f08015a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 235
    .local v2, "glosa":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->getGlosa()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "gl":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 237
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const v14, 0x7f080157

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 242
    .local v3, "hora":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->getDateFormat()Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const v14, 0x7f080159

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 245
    .local v10, "objeto":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->getObjeto()Ljava/lang/String;

    move-result-object v1

    .line 246
    if-nez v1, :cond_2

    .line 247
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :goto_1
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const v14, 0x7f080158

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 252
    invoke-virtual {v11}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->getTipoReclamo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const v14, 0x7f08015b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 255
    .local v5, "imgAttach":Landroid/widget/ImageView;
    invoke-virtual {v11}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->getImageAttach()Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, "url":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 257
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :goto_2
    const v14, 0x7f080155

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 265
    .local v7, "like":Landroid/widget/ImageView;
    const v14, 0x7f0800a7

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 266
    .local v8, "likeCount":Landroid/widget/TextView;
    const v14, 0x7f080154

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 268
    .local v6, "layLike":Landroid/widget/LinearLayout;
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 269
    iget-object v14, v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 273
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    const-string v14, ""

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v14, v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 278
    new-instance v9, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    iget-object v15, v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    invoke-direct {v9, v14, v15}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;-><init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;Ljava/lang/String;)V

    .line 279
    .local v9, "listener":Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    iget-object v15, v11, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->refreshLikeCount(Ljava/lang/String;)V

    .line 308
    .end local v9    # "listener":Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;
    :goto_3
    return-object p2

    .line 239
    .end local v3    # "hora":Landroid/widget/TextView;
    .end local v5    # "imgAttach":Landroid/widget/ImageView;
    .end local v6    # "layLike":Landroid/widget/LinearLayout;
    .end local v7    # "like":Landroid/widget/ImageView;
    .end local v8    # "likeCount":Landroid/widget/TextView;
    .end local v10    # "objeto":Landroid/widget/TextView;
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 249
    .restart local v3    # "hora":Landroid/widget/TextView;
    .restart local v10    # "objeto":Landroid/widget/TextView;
    .restart local v12    # "s":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 259
    .restart local v5    # "imgAttach":Landroid/widget/ImageView;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    invoke-static {v13, v5}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 304
    .restart local v6    # "layLike":Landroid/widget/LinearLayout;
    .restart local v7    # "like":Landroid/widget/ImageView;
    .restart local v8    # "likeCount":Landroid/widget/TextView;
    :cond_4
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

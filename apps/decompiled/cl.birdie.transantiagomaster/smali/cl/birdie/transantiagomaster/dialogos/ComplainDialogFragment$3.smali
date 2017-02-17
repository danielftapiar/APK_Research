.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;
.super Ljava/lang/Object;
.source "ComplainDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial:[I


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial()[I
    .locals 3

    .prologue
    .line 443
    sget-object v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->$SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->values()[Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_NINGUNA:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->$SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    .line 449
    .local v4, "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    if-nez v4, :cond_1

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    const v7, 0x7f060154

    invoke-virtual {v2, v7}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnObjeto:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 457
    .local v5, "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    if-nez v5, :cond_2

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    const v7, 0x7f060155

    invoke-virtual {v2, v7}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->edtComentario:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v16

    .line 467
    .local v16, "cmt":Ljava/lang/String;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 468
    const/4 v3, 0x0

    .line 472
    .local v3, "comment":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_5

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->redDisponible()Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-result-object v1

    .line 474
    sget-object v2, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    if-ne v1, v2, :cond_5

    .line 475
    if-eqz v3, :cond_5

    .line 476
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    .line 477
    .local v15, "cmlength":I
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/16 v18, 0x17

    .line 478
    .local v18, "imgsize":I
    :goto_2
    add-int v1, v15, v18

    const/16 v2, 0x8c

    if-le v1, v2, :cond_5

    .line 479
    add-int v1, v15, v18

    add-int/lit16 v0, v1, -0x8c

    move/from16 v17, v0

    .line 480
    .local v17, "diff":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    const v8, 0x7f06015c

    invoke-virtual {v7, v8}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 483
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    const v8, 0x7f06015d

    invoke-virtual {v7, v8}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    .end local v3    # "comment":Ljava/lang/String;
    .end local v15    # "cmlength":I
    .end local v17    # "diff":I
    .end local v18    # "imgsize":I
    :cond_3
    move-object/from16 v3, v16

    .restart local v3    # "comment":Ljava/lang/String;
    goto :goto_1

    .line 477
    .restart local v15    # "cmlength":I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 491
    .end local v15    # "cmlength":I
    :cond_5
    new-instance v6, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    iget v1, v4, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->id:I

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    invoke-direct {v6, v3, v1, v2}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    .local v6, "params":Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->redDisponible()Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-result-object v19

    .line 496
    .local v19, "red":Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    invoke-static {}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->$SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial()[I

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 498
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v7, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    invoke-interface {v7, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestFacebookPublishPermissions(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)Z

    goto/16 :goto_0

    .line 546
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v7, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v8, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v9, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->gpsPoint:Lcl/birdie/toolkit/LatLng;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v13, v1, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    new-instance v14, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-interface/range {v7 .. v14}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onComplain(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Lcl/birdie/toolkit/LatLng;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->dismiss()V

    goto/16 :goto_0

    .line 581
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v2, 0x7f06011e

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(I)V

    goto/16 :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

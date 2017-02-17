.class public final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescargarFotosAlbumCallback"
.end annotation


# instance fields
.field callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p1, "ifbcallback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 580
    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 15
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 583
    sget-object v12, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v13, "GetPhotosAlbum Calback"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, "ImagesReturns":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/ImageModel;>;"
    if-nez p1, :cond_0

    .line 588
    sget-object v12, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v13, "Respuesta nula"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v12

    invoke-interface {v12}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 596
    .local v4, "graphResponse":Lorg/json/JSONObject;
    :try_start_1
    const-string v12, "data"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 605
    .local v8, "imageArray":Lorg/json/JSONArray;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 606
    .local v3, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v3, :cond_2

    .line 608
    sget-object v12, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v12, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "JSON error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 641
    :cond_1
    :goto_0
    iget-object v12, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v12, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 642
    .end local v3    # "error":Lcom/facebook/FacebookRequestError;
    .end local v4    # "graphResponse":Lorg/json/JSONObject;
    .end local v8    # "imageArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 591
    :catch_0
    move-exception v2

    .line 592
    .local v2, "e":Ljava/lang/Exception;
    sget-object v12, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "JSON error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v12, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "JSON error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 599
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "graphResponse":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 600
    .local v2, "e":Lorg/json/JSONException;
    sget-object v12, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 601
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "JSON error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 600
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v12, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "JSON error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 615
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v8    # "imageArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 616
    .local v10, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v10, :cond_1

    .line 618
    const-string v0, ""

    .line 621
    .local v0, "Coment":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 622
    .local v9, "o":Lorg/json/JSONObject;
    const-string v12, "source"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 623
    .local v11, "url":Ljava/lang/String;
    const-string v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 626
    .local v6, "id":Ljava/lang/String;
    :try_start_3
    const-string v12, "name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 632
    :goto_3
    :try_start_4
    new-instance v7, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    invoke-direct {v7, v11, v0, v6}, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .local v7, "image":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 628
    .end local v7    # "image":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    :catch_2
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 636
    .end local v0    # "Coment":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v9    # "o":Lorg/json/JSONObject;
    .end local v10    # "sz":I
    .end local v11    # "url":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

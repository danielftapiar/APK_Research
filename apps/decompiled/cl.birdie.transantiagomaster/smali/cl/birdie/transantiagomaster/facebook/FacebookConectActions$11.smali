.class final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PhotoLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 792
    sget-object v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v6, "PhotoLikeCount Callback"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 804
    .local v3, "jsonobj":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 805
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v2, :cond_1

    .line 807
    sget-object v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v5, :cond_0

    .line 809
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PhotoLikeCount: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 832
    .end local v2    # "error":Lcom/facebook/FacebookRequestError;
    .end local v3    # "jsonobj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JSON error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v5, :cond_0

    .line 800
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const-string v6, "PhotoLikeCount: Error JSON"

    invoke-interface {v5, v6}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 816
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v3    # "jsonobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 817
    const/4 v0, 0x0

    .local v0, "data":Lorg/json/JSONObject;
    const-string v6, "like_info"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 818
    const-string v6, "like_count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 820
    .local v4, "likeCount":I
    sget-object v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PhotoLikeCount: likeCount "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v5, :cond_0

    .line 822
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 824
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v4    # "likeCount":I
    :catch_1
    move-exception v1

    .line 826
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v6, "PhotoLikeCount: error al obtener likeCount"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v5, :cond_0

    .line 829
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;->val$origen:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const-string v6, "PhotoLikeCount: error al obtener likeCount"

    invoke-interface {v5, v6}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

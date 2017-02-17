.class final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetPostFromId(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 9
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 982
    sget-object v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v5, "GetPostFromId Calback"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 984
    if-nez p1, :cond_0

    .line 985
    sget-object v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v5, "Respuesta nula"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1015
    :goto_0
    return-void

    .line 991
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 998
    .local v2, "graphResponse":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 999
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_1

    .line 1001
    sget-object v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v6, 0x3

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 992
    .end local v1    # "error":Lcom/facebook/FacebookRequestError;
    .end local v2    # "graphResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JSON error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    invoke-direct {v5, v8, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 1009
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v2    # "graphResponse":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v3, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    invoke-direct {v3, v2}, Lcl/birdie/transantiagomaster/facebook/models/PostModel;-><init>(Lorg/json/JSONObject;)V

    .line 1010
    .local v3, "post":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v4, v3}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1014
    .end local v3    # "post":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    :catch_1
    move-exception v4

    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    invoke-direct {v5, v8, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

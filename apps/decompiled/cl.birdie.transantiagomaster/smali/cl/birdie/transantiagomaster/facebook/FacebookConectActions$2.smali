.class final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PublicarFoto(Ljava/lang/String;[BLcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback1:Lcom/facebook/Request$Callback;

.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field private final synthetic val$textPhoto:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$textPhoto:Ljava/lang/String;

    iput-object p3, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$callback1:Lcom/facebook/Request$Callback;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 12
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 284
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v1, "PublicarFoto: callback2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 286
    if-nez p1, :cond_0

    .line 287
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v1, "Respuesta nula"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 331
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PublicarFoto: callback2: response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 303
    .local v8, "graphResponse":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    .line 304
    .local v7, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v7, :cond_1

    .line 306
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v2, 0x3

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    .end local v7    # "error":Lcom/facebook/FacebookRequestError;
    .end local v8    # "graphResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 298
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    invoke-direct {v1, v11, v10}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v8    # "graphResponse":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v1, "PublicarFoto: callback2 publicar en muro"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v9, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    invoke-direct {v9, v8}, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;-><init>(Lorg/json/JSONObject;)V

    .line 318
    .local v9, "image":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v3, "params":Landroid/os/Bundle;
    const-string v0, "name"

    const-string v1, "Lo vi en el Transantiago!"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "caption"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$textPhoto:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "link"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "www.facebook.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "picture"

    iget-object v1, v9, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    # getter for: Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IdTM:Ljava/lang/String;
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->access$0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/feed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$callback1:Lcom/facebook/Request$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 326
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 330
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v9    # "image":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    invoke-direct {v1, v11, v10}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

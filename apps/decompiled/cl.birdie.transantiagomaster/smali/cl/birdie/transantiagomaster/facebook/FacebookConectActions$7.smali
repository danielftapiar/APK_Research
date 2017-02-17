.class final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->Favorite(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 9
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 533
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v4, "Favorite: onCompleted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "graphResponse":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 536
    .local v2, "obj":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 537
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v4, "Favorite: respuesta nula"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    invoke-direct {v4, v5, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 562
    :goto_0
    return-void

    .line 543
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 545
    :try_start_1
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 546
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3501"

    if-ne v3, v4, :cond_2

    .line 547
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v4, "favorite error 3501 repetido"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v5, 0x2

    const-string v6, "3501"

    invoke-direct {v4, v5, v6}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 556
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 558
    :catch_1
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSON error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    invoke-direct {v4, v8, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v4, "error de alg\u00fan tipo!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

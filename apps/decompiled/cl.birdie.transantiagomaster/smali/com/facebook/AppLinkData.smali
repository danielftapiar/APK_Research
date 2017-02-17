.class public Lcom/facebook/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/facebook/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/AppLinkData;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 209
    const-string v2, "activity"

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 215
    :cond_1
    invoke-static {v1}, Lcom/facebook/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;

    move-result-object v0

    .line 216
    .local v0, "appLinkData":Lcom/facebook/AppLinkData;
    if-nez v0, :cond_2

    .line 217
    const-string v2, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v0

    .line 220
    :cond_2
    if-nez v0, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 229
    const-string v5, "al_applink_data"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 230
    .local v1, "applinks":Landroid/os/Bundle;
    if-nez v1, :cond_1

    move-object v0, v4

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    new-instance v0, Lcom/facebook/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/AppLinkData;-><init>()V

    .line 235
    .local v0, "appLinkData":Lcom/facebook/AppLinkData;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 236
    iget-object v5, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez v5, :cond_2

    .line 237
    const-string v5, "target_url"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "targetUriString":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 239
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 242
    .end local v3    # "targetUriString":Ljava/lang/String;
    :cond_2
    iput-object v1, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 243
    iput-object v4, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 244
    const-string v4, "referer_data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 245
    .local v2, "refererData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 246
    const-string v4, "fb_ref"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    goto :goto_0
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 253
    if-nez p0, :cond_0

    move-object v1, v5

    .line 294
    :goto_0
    return-object v1

    .line 259
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "appLinkArgsJson":Lorg/json/JSONObject;
    const-string v6, "version"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "version":Ljava/lang/String;
    const-string v6, "bridge_args"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 263
    const-string v7, "method"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    const-string v7, "applink"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 266
    new-instance v1, Lcom/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    .line 268
    .local v1, "appLinkData":Lcom/facebook/AppLinkData;
    const-string v6, "method_args"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 270
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v7, "ref"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 271
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v7, "ref"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    .line 280
    :cond_1
    :goto_1
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v7, "target_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 281
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v7, "target_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 284
    :cond_2
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 288
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/AppLinkData;
    .end local v4    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_2
    move-object v1, v5

    .line 294
    goto :goto_0

    .line 272
    .restart local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .restart local v1    # "appLinkData":Lcom/facebook/AppLinkData;
    .restart local v4    # "version":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v7, "referer_data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    iget-object v6, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v7, "referer_data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 275
    .local v3, "refererData":Lorg/json/JSONObject;
    const-string v6, "fb_ref"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    const-string v6, "fb_ref"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 290
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/AppLinkData;
    .end local v3    # "refererData":Lorg/json/JSONObject;
    .end local v4    # "version":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 291
    .local v2, "e":Lcom/facebook/FacebookException;
    sget-object v6, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    goto :goto_2
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;
    .locals 1
    .param p0, "appLinkDataUri"    # Landroid/net/Uri;

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    new-instance v0, Lcom/facebook/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/AppLinkData;-><init>()V

    .line 303
    .local v0, "appLinkData":Lcom/facebook/AppLinkData;
    iput-object p0, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "completionHandler"    # Lcom/facebook/AppLinkData$CompletionHandler;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    .line 92
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/AppLinkData$CompletionHandler;

    .prologue
    .line 106
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string v2, "completionHandler"

    invoke-static {p2, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    const-string v2, "applicationId"

    invoke-static {p1, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "applicationContext":Landroid/content/Context;
    move-object v1, p1

    .line 117
    .local v1, "applicationIdCopy":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/AppLinkData$1;

    invoke-direct {v3, v0, v1, p2}, Lcom/facebook/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/AppLinkData$CompletionHandler;

    .prologue
    .line 130
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v4

    .line 131
    .local v4, "deferredApplinkParams":Lcom/facebook/model/GraphObject;
    const-string v10, "event"

    const-string v11, "DEFERRED_APP_LINK"

    invoke-interface {v4, v10, v11}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v10

    .line 134
    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 135
    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v12

    .line 132
    invoke-static {v4, v10, v11, v12}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 136
    const-string v10, "application_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v10, "%s/activities"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "deferredApplinkUrlPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 143
    .local v2, "appLinkData":Lcom/facebook/AppLinkData;
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 142
    :try_start_0
    invoke-static {v10, v5, v4, v11}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v10

    .line 144
    invoke-virtual {v10}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v10

    .line 145
    invoke-virtual {v10}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v9

    .line 146
    .local v9, "wireResponse":Lcom/facebook/model/GraphObject;
    if-eqz v9, :cond_6

    invoke-interface {v9}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    .line 147
    .local v6, "jsonResponse":Lorg/json/JSONObject;
    :goto_0
    if-eqz v6, :cond_5

    .line 148
    const-string v10, "applink_args"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "appLinkArgsJsonString":Ljava/lang/String;
    const-string v10, "click_time"

    const-wide/16 v11, -0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 150
    .local v7, "tapTimeUtc":J
    const-string v10, "applink_class"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "appLinkClassName":Ljava/lang/String;
    const-string v10, "applink_url"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "appLinkUrl":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v10, ""

    if-eq v0, v10, :cond_5

    .line 154
    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 156
    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-eqz v10, :cond_1

    .line 158
    :try_start_1
    iget-object v10, v2, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v10, :cond_0

    .line 159
    iget-object v10, v2, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v10, v11, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    :cond_0
    iget-object v10, v2, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    .line 162
    iget-object v10, v2, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v11, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 169
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 171
    :try_start_2
    iget-object v10, v2, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v10, :cond_2

    .line 172
    iget-object v10, v2, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_2
    iget-object v10, v2, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_3

    .line 175
    iget-object v10, v2, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v11, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 182
    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    .line 184
    :try_start_3
    iget-object v10, v2, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v10, :cond_4

    .line 185
    iget-object v10, v2, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_4
    iget-object v10, v2, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_5

    .line 188
    iget-object v10, v2, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v11, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v10, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    .end local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v1    # "appLinkClassName":Ljava/lang/String;
    .end local v3    # "appLinkUrl":Ljava/lang/String;
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v7    # "tapTimeUtc":J
    .end local v9    # "wireResponse":Lcom/facebook/model/GraphObject;
    :cond_5
    :goto_3
    invoke-interface {p2, v2}, Lcom/facebook/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/AppLinkData;)V

    .line 201
    return-void

    .line 146
    .restart local v9    # "wireResponse":Lcom/facebook/model/GraphObject;
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 165
    .restart local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    .restart local v1    # "appLinkClassName":Ljava/lang/String;
    .restart local v3    # "appLinkUrl":Ljava/lang/String;
    .restart local v6    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v7    # "tapTimeUtc":J
    :catch_0
    move-exception v10

    :try_start_4
    sget-object v10, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 178
    :catch_1
    move-exception v10

    sget-object v10, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 191
    :catch_2
    move-exception v10

    sget-object v10, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 197
    .end local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v1    # "appLinkClassName":Ljava/lang/String;
    .end local v3    # "appLinkUrl":Ljava/lang/String;
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v7    # "tapTimeUtc":J
    .end local v9    # "wireResponse":Lcom/facebook/model/GraphObject;
    :catch_3
    move-exception v10

    sget-object v10, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v11, "Unable to fetch deferred applink from server"

    invoke-static {v10, v11}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 11
    .param p0, "node"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 311
    .local v3, "fields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 345
    return-object v1

    .line 312
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 314
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 316
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Lorg/json/JSONObject;

    if-eqz v9, :cond_1

    .line 317
    check-cast v7, Lorg/json/JSONObject;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-static {v7}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 318
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_7

    move-object v8, v7

    .line 319
    check-cast v8, Lorg/json/JSONArray;

    .line 320
    .local v8, "valueArr":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 321
    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 324
    .local v4, "firstNode":Ljava/lang/Object;
    instance-of v9, v4, Lorg/json/JSONObject;

    if-eqz v9, :cond_4

    .line 325
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v2, v9, [Landroid/os/Bundle;

    .line 326
    .local v2, "bundles":[Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_3

    .line 329
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v9

    aput-object v9, v2, v5

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 330
    .end local v2    # "bundles":[Landroid/os/Bundle;
    .end local v5    # "i":I
    :cond_4
    instance-of v9, v4, Lorg/json/JSONArray;

    if-eqz v9, :cond_5

    .line 332
    new-instance v9, Lcom/facebook/FacebookException;

    const-string v10, "Nested arrays are not supported."

    invoke-direct {v9, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 334
    :cond_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 335
    .local v0, "arrValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_6

    .line 338
    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_6
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    .line 335
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 342
    .end local v0    # "arrValues":[Ljava/lang/String;
    .end local v4    # "firstNode":Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v8    # "valueArr":Lorg/json/JSONArray;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getArguments()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method

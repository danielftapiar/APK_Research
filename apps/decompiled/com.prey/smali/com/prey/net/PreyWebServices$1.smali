.class Lcom/prey/net/PreyWebServices$1;
.super Ljava/lang/Thread;
.source "PreyWebServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/net/PreyWebServices;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/prey/net/PreyWebServices;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/net/PreyWebServices;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/prey/net/PreyWebServices$1;->this$0:Lcom/prey/net/PreyWebServices;

    iput-object p2, p0, Lcom/prey/net/PreyWebServices$1;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/prey/net/PreyWebServices$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 807
    new-instance v8, Lcom/prey/PreyPhone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/prey/net/PreyWebServices$1;->val$ctx:Landroid/content/Context;

    invoke-direct {v8, v14}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    .line 808
    .local v8, "phone":Lcom/prey/PreyPhone;
    invoke-virtual {v8}, Lcom/prey/PreyPhone;->getHardware()Lcom/prey/PreyPhone$Hardware;

    move-result-object v14

    invoke-virtual {v14}, Lcom/prey/PreyPhone$Hardware;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    .line 810
    .local v10, "serialNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/prey/net/PreyWebServices$1;->val$ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/prey/PreyConfig;->getPreyVersion()Ljava/lang/String;

    move-result-object v13

    .line 811
    .local v13, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/prey/net/PreyWebServices$1;->val$ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/prey/PreyConfig;->getSessionId()Ljava/lang/String;

    move-result-object v11

    .line 813
    .local v11, "sid":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 815
    .local v12, "time":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/prey/net/PreyWebServices$1;->val$ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/prey/FileConfigReader;->getPreyEventsLogs()Ljava/lang/String;

    move-result-object v7

    .line 816
    .local v7, "page":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "URL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 817
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 818
    .local v3, "jsonParam":Lorg/json/JSONObject;
    const-string v14, "enum"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/prey/net/PreyWebServices$1;->val$id:I

    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 820
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 822
    .local v9, "properties":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 823
    .local v5, "jsonSid":Lorg/json/JSONObject;
    const-string v14, "name"

    const-string v15, "sid"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v14, "value"

    invoke-virtual {v5, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 827
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 828
    .local v4, "jsonSerial":Lorg/json/JSONObject;
    const-string v14, "name"

    const-string v15, "sn"

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    const-string v14, "value"

    invoke-virtual {v4, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 833
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 834
    .local v6, "jsonVersion":Lorg/json/JSONObject;
    const-string v14, "name"

    const-string v15, "version"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    const-string v14, "value"

    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 838
    const-string v14, "properties"

    invoke-virtual {v3, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "__________jsonParam:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/prey/net/PreyWebServices$1;->val$ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v14

    invoke-virtual {v14, v7, v3}, Lcom/prey/net/PreyRestHttpClient;->postJson(Ljava/lang/String;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .end local v3    # "jsonParam":Lorg/json/JSONObject;
    .end local v4    # "jsonSerial":Lorg/json/JSONObject;
    .end local v5    # "jsonSid":Lorg/json/JSONObject;
    .end local v6    # "jsonVersion":Lorg/json/JSONObject;
    .end local v7    # "page":Ljava/lang/String;
    .end local v9    # "properties":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 843
    :catch_0
    move-exception v2

    .line 844
    .local v2, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

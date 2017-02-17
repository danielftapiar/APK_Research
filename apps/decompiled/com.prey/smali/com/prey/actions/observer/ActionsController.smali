.class public Lcom/prey/actions/observer/ActionsController;
.super Ljava/lang/Object;
.source "ActionsController.java"


# static fields
.field private static _instance:Lcom/prey/actions/observer/ActionsController;


# instance fields
.field private actionJobs:Lcom/prey/actions/observer/JobsQueue;

.field private ctx:Landroid/content/Context;

.field private lastReceivedActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/PreyAction;",
            ">;"
        }
    .end annotation
.end field

.field private waitNotify:Lcom/prey/actions/PreyExecutionWaitNotify;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/prey/actions/observer/JobsQueue;

    invoke-direct {v0, p0}, Lcom/prey/actions/observer/JobsQueue;-><init>(Lcom/prey/actions/observer/ActionsController;)V

    iput-object v0, p0, Lcom/prey/actions/observer/ActionsController;->actionJobs:Lcom/prey/actions/observer/JobsQueue;

    .line 35
    iput-object p1, p0, Lcom/prey/actions/observer/ActionsController;->ctx:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/prey/actions/observer/ActionsController;->_instance:Lcom/prey/actions/observer/ActionsController;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/prey/actions/observer/ActionsController;

    invoke-direct {v0, p0}, Lcom/prey/actions/observer/ActionsController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/actions/observer/ActionsController;->_instance:Lcom/prey/actions/observer/ActionsController;

    .line 41
    :cond_0
    sget-object v0, Lcom/prey/actions/observer/ActionsController;->_instance:Lcom/prey/actions/observer/ActionsController;

    return-object v0
.end method


# virtual methods
.method public finishRunningJosb()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/prey/actions/observer/ActionsController;->actionJobs:Lcom/prey/actions/observer/JobsQueue;

    iget-object v1, p0, Lcom/prey/actions/observer/ActionsController;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/prey/actions/observer/JobsQueue;->finishRunningJobs(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public jobGroupFinished(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/observer/ActionResult;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "dataToBeSent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/HttpDataService;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/observer/ActionResult;

    .line 92
    .local v0, "aResult":Lcom/prey/actions/observer/ActionResult;
    invoke-virtual {v0}, Lcom/prey/actions/observer/ActionResult;->getDataToSend()Lcom/prey/actions/HttpDataService;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "aResult":Lcom/prey/actions/observer/ActionResult;
    :cond_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/prey/net/PreyWebServices;->sendPreyHttpReport(Landroid/content/Context;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/prey/actions/observer/ActionsController;->waitNotify:Lcom/prey/actions/PreyExecutionWaitNotify;

    invoke-virtual {v2}, Lcom/prey/actions/PreyExecutionWaitNotify;->doNotify()V

    .line 97
    return-void
.end method

.method public runActionGroup(Ljava/util/ArrayList;Lcom/prey/actions/PreyExecutionWaitNotify;Z)V
    .locals 3
    .param p2, "waitNotify"    # Lcom/prey/actions/PreyExecutionWaitNotify;
    .param p3, "isMissing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/PreyAction;",
            ">;",
            "Lcom/prey/actions/PreyExecutionWaitNotify;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/PreyAction;>;"
    iput-object p2, p0, Lcom/prey/actions/observer/ActionsController;->waitNotify:Lcom/prey/actions/PreyExecutionWaitNotify;

    .line 78
    new-instance v0, Lcom/prey/actions/observer/JobsGroup;

    iget-object v1, p0, Lcom/prey/actions/observer/ActionsController;->ctx:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/prey/actions/observer/JobsGroup;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 79
    .local v0, "jobsGroup":Lcom/prey/actions/observer/JobsGroup;
    iget-object v1, p0, Lcom/prey/actions/observer/ActionsController;->actionJobs:Lcom/prey/actions/observer/JobsQueue;

    iget-object v2, p0, Lcom/prey/actions/observer/ActionsController;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0, v2, p3}, Lcom/prey/actions/observer/JobsQueue;->addAndRunJobGroup(Lcom/prey/actions/observer/JobsGroup;Landroid/content/Context;Z)V

    .line 80
    invoke-virtual {v0}, Lcom/prey/actions/observer/JobsGroup;->hasReportModules()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/prey/actions/PreyExecutionWaitNotify;->doNotify()V

    .line 82
    :cond_0
    return-void
.end method

.method public runActionJson(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    if-nez p2, :cond_1

    const/4 v10, -0x1

    .line 103
    .local v10, "size":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runActionJson size:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 106
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 107
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 108
    .local v8, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jsonObject:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 109
    const-string v0, "target"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "nameAction":Ljava/lang/String;
    const-string v0, "command"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 111
    .local v3, "methodAction":Ljava/lang/String;
    const/4 v4, 0x0

    .line 113
    .local v4, "parametersAction":Lorg/json/JSONObject;
    :try_start_1
    const-string v0, "options"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 117
    :goto_2
    if-nez v4, :cond_0

    .line 118
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "parametersAction":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .restart local v4    # "parametersAction":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string v0, "messageID"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "messageId":Ljava/lang/String;
    const-string v0, "messageID"

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 124
    .end local v9    # "messageId":Ljava/lang/String;
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nameAction:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " methodAction:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " parametersAction:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    move-object v0, p1

    .line 127
    invoke-static/range {v0 .. v5}, Lcom/prey/util/ClassUtil;->execute(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/List;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 102
    .end local v1    # "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    .end local v2    # "nameAction":Ljava/lang/String;
    .end local v3    # "methodAction":Ljava/lang/String;
    .end local v4    # "parametersAction":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "size":I
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    goto/16 :goto_0

    .line 139
    .restart local v7    # "i":I
    .restart local v10    # "size":I
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error, causa:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const/4 v5, 0x0

    .end local v5    # "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v5

    .line 123
    .restart local v2    # "nameAction":Ljava/lang/String;
    .restart local v3    # "methodAction":Ljava/lang/String;
    .restart local v4    # "parametersAction":Lorg/json/JSONObject;
    .restart local v5    # "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 114
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public stopUnselectedModules(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/PreyAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/PreyAction;>;"
    const-string v3, "Checking if there are modules to stop."

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/prey/actions/observer/ActionsController;->lastReceivedActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 53
    iget-object v3, p0, Lcom/prey/actions/observer/ActionsController;->lastReceivedActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prey/actions/PreyAction;

    .line 54
    .local v2, "probablyRunningAction":Lcom/prey/actions/PreyAction;
    const/4 v1, 0x1

    .line 55
    .local v1, "killAction":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/PreyAction;

    .line 56
    .local v0, "controlPanelAction":Lcom/prey/actions/PreyAction;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking control panel action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " against probably running action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v0}, Lcom/prey/actions/PreyAction;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 59
    const-string v4, "Matched!, no need to kill it."

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 63
    .end local v0    # "controlPanelAction":Lcom/prey/actions/PreyAction;
    :cond_2
    if-eqz v1, :cond_0

    .line 64
    iget-object v4, p0, Lcom/prey/actions/observer/ActionsController;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/prey/actions/PreyAction;->killAnyInstanceRunning(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    .end local v1    # "killAction":Z
    .end local v2    # "probablyRunningAction":Lcom/prey/actions/PreyAction;
    :cond_3
    iput-object p1, p0, Lcom/prey/actions/observer/ActionsController;->lastReceivedActions:Ljava/util/ArrayList;

    .line 69
    :cond_4
    return-void
.end method

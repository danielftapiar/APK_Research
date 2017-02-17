.class public Lcom/prey/actions/ReportActionResponse;
.super Ljava/lang/Object;
.source "ReportActionResponse.java"


# instance fields
.field private actionsToPerform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/PreyAction;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private missing:Z

.field private postUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prey/actions/ReportActionResponse;->actionsToPerform:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/actions/ReportActionResponse;->missing:Z

    .line 19
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/prey/actions/ReportActionResponse;->delay:J

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "active"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/prey/actions/PreyAction;->getActionFromName(Ljava/lang/String;)Lcom/prey/actions/PreyAction;

    move-result-object v0

    .line 25
    .local v0, "action":Lcom/prey/actions/PreyAction;
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/prey/actions/ReportActionResponse;->actionsToPerform:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    return-void
.end method

.method public addActionConfigParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;
    .param p3, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/prey/actions/ReportActionResponse;->actionsToPerform:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/PreyAction;

    invoke-virtual {v0}, Lcom/prey/actions/PreyAction;->getConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public getActionsToPerform(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/PreyAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isCamouflageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/prey/actions/ReportActionResponse;->actionsToPerform:Ljava/util/HashMap;

    const-string v1, "camouflage"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "uncamouflage"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/prey/actions/ReportActionResponse;->addAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/prey/actions/ReportActionResponse;->actionsToPerform:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/prey/actions/ReportActionResponse;->delay:J

    return-wide v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/prey/actions/ReportActionResponse;->postUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isMissing()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/prey/actions/ReportActionResponse;->missing:Z

    return v0
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/prey/actions/ReportActionResponse;->delay:J

    .line 48
    return-void
.end method

.method public setMissing(Z)V
    .locals 0
    .param p1, "missing"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/prey/actions/ReportActionResponse;->missing:Z

    .line 56
    return-void
.end method

.method public setPostUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "postUrl"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/prey/actions/ReportActionResponse;->postUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

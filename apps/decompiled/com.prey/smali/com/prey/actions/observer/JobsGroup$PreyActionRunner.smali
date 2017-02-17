.class Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;
.super Ljava/lang/Object;
.source "JobsGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/actions/observer/JobsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreyActionRunner"
.end annotation


# instance fields
.field private actionJob:Lcom/prey/actions/observer/ActionJob;

.field private ctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/prey/actions/observer/JobsGroup;

.field private waitNotifyPriority:Lcom/prey/actions/PreyExecutionWaitNotify;


# direct methods
.method public constructor <init>(Lcom/prey/actions/observer/JobsGroup;Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;Lcom/prey/actions/PreyExecutionWaitNotify;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/observer/JobsGroup;
    .param p2, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "waitNotifyPriority"    # Lcom/prey/actions/PreyExecutionWaitNotify;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->this$0:Lcom/prey/actions/observer/JobsGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->actionJob:Lcom/prey/actions/observer/ActionJob;

    .line 171
    iput-object p3, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->ctx:Landroid/content/Context;

    .line 172
    iput-object p4, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->waitNotifyPriority:Lcom/prey/actions/PreyExecutionWaitNotify;

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->actionJob:Lcom/prey/actions/observer/ActionJob;

    invoke-virtual {v2}, Lcom/prey/actions/observer/ActionJob;->getAction()Lcom/prey/actions/PreyAction;

    move-result-object v0

    .line 178
    .local v0, "action":Lcom/prey/actions/PreyAction;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Esperando el action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->waitNotifyPriority:Lcom/prey/actions/PreyExecutionWaitNotify;

    invoke-virtual {v2}, Lcom/prey/actions/PreyExecutionWaitNotify;->doWait()V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ejecutando el action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->actionJob:Lcom/prey/actions/observer/ActionJob;

    iget-object v3, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/prey/actions/PreyAction;->execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " termino el execute el action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;->waitNotifyPriority:Lcom/prey/actions/PreyExecutionWaitNotify;

    invoke-virtual {v2}, Lcom/prey/actions/PreyExecutionWaitNotify;->doNotify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "action":Lcom/prey/actions/PreyAction;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

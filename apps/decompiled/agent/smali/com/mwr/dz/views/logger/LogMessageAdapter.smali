.class public Lcom/mwr/dz/views/logger/LogMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogMessageAdapter.java"

# interfaces
.implements Lcom/mwr/jdiesel/logger/OnLogMessageListener;


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/mwr/jdiesel/logger/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mwr/jdiesel/logger/Logger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/mwr/jdiesel/logger/Logger;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->context:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->logger:Lcom/mwr/jdiesel/logger/Logger;

    .line 18
    iput-object p1, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->logger:Lcom/mwr/jdiesel/logger/Logger;

    .line 21
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->logger:Lcom/mwr/jdiesel/logger/Logger;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/logger/Logger;->addOnLogMessageListener(Lcom/mwr/jdiesel/logger/OnLogMessageListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->logger:Lcom/mwr/jdiesel/logger/Logger;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/logger/Logger;->getLogMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->logger:Lcom/mwr/jdiesel/logger/Logger;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/logger/Logger;->getLogMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "pos"    # I
    .param p2, "copyView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    new-instance v0, Lcom/mwr/dz/views/logger/LogMessageRowView;

    iget-object v1, p0, Lcom/mwr/dz/views/logger/LogMessageAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mwr/dz/views/logger/LogMessageRowView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "view":Lcom/mwr/dz/views/logger/LogMessageRowView;
    invoke-virtual {p0, p1}, Lcom/mwr/dz/views/logger/LogMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/logger/LogMessage;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/logger/LogMessageRowView;->setLogMessage(Lcom/mwr/jdiesel/logger/LogMessage;)V

    .line 45
    return-object v0
.end method

.method public onLogMessage(Lcom/mwr/jdiesel/logger/Logger;Lcom/mwr/jdiesel/logger/LogMessage;)V
    .locals 0
    .param p1, "logger"    # Lcom/mwr/jdiesel/logger/Logger;
    .param p2, "message"    # Lcom/mwr/jdiesel/logger/LogMessage;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mwr/dz/views/logger/LogMessageAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

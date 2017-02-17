.class public Lcom/prey/actions/observer/ActionResult;
.super Ljava/lang/Object;
.source "ActionResult.java"


# instance fields
.field private dataToSend:Lcom/prey/actions/HttpDataService;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataToSend()Lcom/prey/actions/HttpDataService;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/prey/actions/observer/ActionResult;->dataToSend:Lcom/prey/actions/HttpDataService;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/prey/actions/observer/ActionResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setDataToSend(Lcom/prey/actions/HttpDataService;)V
    .locals 0
    .param p1, "dataToSend"    # Lcom/prey/actions/HttpDataService;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/prey/actions/observer/ActionResult;->dataToSend:Lcom/prey/actions/HttpDataService;

    .line 30
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/prey/actions/observer/ActionResult;->result:Ljava/lang/String;

    .line 22
    return-void
.end method

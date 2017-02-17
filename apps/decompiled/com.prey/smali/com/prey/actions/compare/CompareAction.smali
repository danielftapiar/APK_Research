.class public Lcom/prey/actions/compare/CompareAction;
.super Ljava/lang/Object;
.source "CompareAction.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/prey/actions/observer/ActionJob;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prey/actions/observer/ActionJob;Lcom/prey/actions/observer/ActionJob;)I
    .locals 6
    .param p1, "o1"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "o2"    # Lcom/prey/actions/observer/ActionJob;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 18
    if-nez p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v2

    .line 21
    :cond_1
    if-nez p2, :cond_2

    move v2, v3

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1}, Lcom/prey/actions/observer/ActionJob;->getAction()Lcom/prey/actions/PreyAction;

    move-result-object v0

    .line 25
    .local v0, "p1":Lcom/prey/actions/PreyAction;
    invoke-virtual {p2}, Lcom/prey/actions/observer/ActionJob;->getAction()Lcom/prey/actions/PreyAction;

    move-result-object v1

    .line 26
    .local v1, "p2":Lcom/prey/actions/PreyAction;
    if-eqz v0, :cond_0

    .line 29
    if-nez v1, :cond_3

    move v2, v3

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {v0}, Lcom/prey/actions/PreyAction;->getPriority()I

    move-result v4

    invoke-virtual {v1}, Lcom/prey/actions/PreyAction;->getPriority()I

    move-result v5

    if-gt v4, v5, :cond_0

    move v2, v3

    .line 35
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/prey/actions/observer/ActionJob;

    check-cast p2, Lcom/prey/actions/observer/ActionJob;

    invoke-virtual {p0, p1, p2}, Lcom/prey/actions/compare/CompareAction;->compare(Lcom/prey/actions/observer/ActionJob;Lcom/prey/actions/observer/ActionJob;)I

    move-result v0

    return v0
.end method

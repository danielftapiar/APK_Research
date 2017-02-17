.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-nez v2, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOnerrornext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStepById(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    if-eq p1, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->d:Ljava/util/List;

    return-object v0
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->b:Ljava/lang/String;

    return-void
.end method

.method public setOnerrornext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->c:Ljava/lang/String;

    return-void
.end method

.method public setProcessId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->a:Ljava/lang/String;

    return-void
.end method

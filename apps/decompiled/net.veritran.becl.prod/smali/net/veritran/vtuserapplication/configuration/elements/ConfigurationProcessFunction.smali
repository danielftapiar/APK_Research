.class public abstract Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;",
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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFunctionCallParam(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;->addParam(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;)V

    return-void
.end method

.method public addFuntionCall(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;)V

    return-void
.end method

.method public getFunctionClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFuntionCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    return-object v0
.end method

.method public getLastFuntionCall()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStep()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    return-object v0
.end method

.method protected setFunctionClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->a:Ljava/lang/String;

    return-void
.end method

.method public setStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    return-void
.end method

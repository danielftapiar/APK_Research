.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

.field private e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

.field private f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunction()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    return-object v0
.end method

.method public getFuntionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNextStep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOnError()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    return-object v0
.end method

.method public getProcess()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    return-object v0
.end method

.method public getStepId()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->a:I

    return v0
.end method

.method public setFunction(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    return-void
.end method

.method public setFuntionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->b:Ljava/lang/String;

    return-void
.end method

.method public setNextStep(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->c:Ljava/lang/String;

    return-void
.end method

.method public setOnError(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    return-void
.end method

.method public setProcess(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    return-void
.end method

.method public setStepId(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->a:I

    return-void
.end method

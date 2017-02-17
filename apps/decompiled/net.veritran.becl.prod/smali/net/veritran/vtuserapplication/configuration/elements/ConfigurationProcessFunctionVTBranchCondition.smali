.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->a:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->d:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->b:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->c:Ljava/lang/String;

    return-void
.end method

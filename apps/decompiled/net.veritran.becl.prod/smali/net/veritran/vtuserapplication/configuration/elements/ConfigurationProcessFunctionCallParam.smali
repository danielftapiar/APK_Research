.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->a:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
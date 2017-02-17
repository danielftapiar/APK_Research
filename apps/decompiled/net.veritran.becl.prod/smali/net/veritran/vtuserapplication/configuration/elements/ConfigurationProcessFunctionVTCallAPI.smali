.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->c:Ljava/util/List;

    const-string v0, "VTCallAPIFunction"

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->setFunctionClass(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCallAPIItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApiId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCallAPIItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->c:Ljava/util/List;

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setApiId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->a:Ljava/lang/String;

    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->b:Ljava/lang/String;

    return-void
.end method

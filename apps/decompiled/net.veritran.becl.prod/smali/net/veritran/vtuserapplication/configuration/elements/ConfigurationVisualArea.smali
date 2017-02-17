.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addElement(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->g:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    return-void
.end method

.method public getDistribution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->f:Ljava/util/List;

    return-object v0
.end method

.method public getIsWrapper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->g:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDistribution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->e:Ljava/lang/String;

    return-void
.end method

.method public setIsWrapper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->c:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->a:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->d:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->b:Ljava/lang/String;

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

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

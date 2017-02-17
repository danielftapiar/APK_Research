.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualVTCellContainerInterface;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public addCell(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    iget-object v3, v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    return-object v0
.end method

.method public getCellsCount()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTDATAGRIDROW"

    return-object v0
.end method

.method public getValueForIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setValueForIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTDataGridRow"

    return-object v0
.end method

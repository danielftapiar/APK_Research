.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

# interfaces
.implements Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualVTCellContainerInterface;


# instance fields
.field private a:Ljava/util/List;
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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    return-object v0
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTDATAGRIDHEADER"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTDataGridHeader"

    return-object v0
.end method

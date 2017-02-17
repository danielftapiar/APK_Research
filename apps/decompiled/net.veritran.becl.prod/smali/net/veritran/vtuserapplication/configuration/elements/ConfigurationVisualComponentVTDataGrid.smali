.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public addRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTDATAGRID"

    return-object v0
.end method

.method public getHeader()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->a:Ljava/util/List;

    return-object v0
.end method

.method public setHeader(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTDataGrid"

    return-object v0
.end method

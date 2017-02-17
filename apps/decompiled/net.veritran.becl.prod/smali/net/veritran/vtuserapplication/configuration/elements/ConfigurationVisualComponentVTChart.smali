.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->c:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addChartBarData(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChartLineData(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChartPieData(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChartBarDatas()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public getChartLineDatas()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public getChartPieDatas()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTCHART"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTChart"

    return-object v0
.end method

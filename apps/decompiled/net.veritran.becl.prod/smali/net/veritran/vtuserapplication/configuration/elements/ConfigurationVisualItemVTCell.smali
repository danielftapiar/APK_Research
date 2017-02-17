.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTCellItem"

    return-object v0
.end method

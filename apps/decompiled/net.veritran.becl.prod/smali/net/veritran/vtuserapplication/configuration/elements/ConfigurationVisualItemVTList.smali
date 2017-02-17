.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

.field private b:Ljava/lang/Object;

.field private c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->a:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->a:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-object v0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    return-object v0
.end method

.method public setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->a:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-void
.end method

.method public setImage(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->b:Ljava/lang/Object;

    return-void
.end method

.method public setItemSelected(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;)V
    .locals 2

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->setItemAssociated(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTListItem"

    return-object v0
.end method

.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemAssociated()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    return-object v0
.end method

.method public setItemAssociated(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTListItemSelected"

    return-object v0
.end method

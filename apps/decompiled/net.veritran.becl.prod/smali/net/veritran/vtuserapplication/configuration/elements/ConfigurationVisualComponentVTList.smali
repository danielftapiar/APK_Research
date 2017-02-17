.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

# interfaces
.implements Ljava/io/Serializable;
.implements Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->a:Ljava/util/List;

    :cond_0
    invoke-virtual {p1, p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTLIST"

    return-object v0
.end method

.method public getListItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->a:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTList"

    return-object v0
.end method

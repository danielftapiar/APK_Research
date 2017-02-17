.class public abstract Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;-><init>()V

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

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

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

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->clone(Z)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v1

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    return-object v0
.end method

.method public clone(Z)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->clone(Z)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v1, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->clone(Z)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v1

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    return-object v0
.end method

.method public deserializeObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->deserializeObject(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    return-void
.end method

.method public getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public serializeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->serializeObject(Ljava/io/ObjectOutputStream;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->a:Ljava/lang/String;

    return-void
.end method

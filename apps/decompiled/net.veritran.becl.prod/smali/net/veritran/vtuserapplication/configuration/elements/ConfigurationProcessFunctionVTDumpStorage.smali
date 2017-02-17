.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;->a:Ljava/util/List;

    const-string v0, "VTDumpStorageFunction"

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;->setFunctionClass(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDumpItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDumpItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;->a:Ljava/util/List;

    return-object v0
.end method

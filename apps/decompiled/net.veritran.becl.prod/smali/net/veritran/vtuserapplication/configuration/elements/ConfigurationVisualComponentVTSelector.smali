.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;",
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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTSELECTOR"

    return-object v0
.end method

.method public getItems()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTSelector"

    return-object v0
.end method

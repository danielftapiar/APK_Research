.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTPANEL"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTPanel"

    return-object v0
.end method
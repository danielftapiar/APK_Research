.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTPASS"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTPassword"

    return-object v0
.end method

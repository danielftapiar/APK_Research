.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

# interfaces
.implements Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentType()Ljava/lang/String;
    .locals 1

    const-string v0, "VTRADIOBUTTON"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VTRadioButton"

    return-object v0
.end method
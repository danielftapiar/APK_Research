.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCache;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;-><init>()V

    const-string v0, "VTCacheFunction"

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCache;->setFunctionClass(Ljava/lang/String;)V

    return-void
.end method

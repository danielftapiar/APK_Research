.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationViewManager;
.super Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    return-void
.end method

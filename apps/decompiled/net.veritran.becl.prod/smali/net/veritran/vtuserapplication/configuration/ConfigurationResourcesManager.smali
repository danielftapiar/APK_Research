.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationResourcesManager;
.super Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourcesManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    return-void
.end method


# virtual methods
.method public getResources(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourcesManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Undefined fileparser (RS)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourcesManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;->setFilter(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourcesManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->parse()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourcesManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;->getResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

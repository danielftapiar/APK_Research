.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;
.super Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;-><init>()V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->c:Ljava/lang/String;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    return-void
.end method


# virtual methods
.method public getAppProperties()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getAppProperties(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationLayouts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getLayoutsResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getLayoutsResultByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParametersResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getParametersResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessResult(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getProcessesResult(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    move-result-object v0

    return-object v0
.end method

.method public getResourceResult(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getResourcesResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCodesResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResponseCode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getResponseCodesResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThemesResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getThemesResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewsResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->getViewsResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Undefined fileparser (CP)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->parse()V

    return-void
.end method

.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeManager;
.super Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    return-void
.end method


# virtual methods
.method public getConfigurationThemes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Undefined fileparser (CP)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->setFilter(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->parse()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

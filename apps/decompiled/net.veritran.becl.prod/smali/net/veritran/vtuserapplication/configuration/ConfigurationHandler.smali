.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;

.field private f:Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;

.field private g:Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;

.field private h:Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

.field private i:Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;

.field private j:Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;

.field private k:Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "tabletapplication"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->insertParent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "parameters"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "responsecodes"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "layouttemplates"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "themes"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "views"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "processes"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "resources"

    const-string v2, "tabletapplication"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->l:Ljava/lang/String;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->e:Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->f:Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->g:Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->h:Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->i:Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->j:Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->k:Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->characters([CII)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "tabletapplication"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeConfigurationAppProperties(Ljava/util/Hashtable;Ljava/lang/String;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    :cond_0
    const-string v0, "parameters"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_1
    const-string v0, "responsecodes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_2
    const-string v0, "layouttemplates"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_3
    const-string v0, "themes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_4
    const-string v0, "views"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_5
    const-string v0, "processes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_6
    const-string v0, "resources"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    :cond_7
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public getAppProperties(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getSerializedConfigurationAppProperties(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getLayoutsResult(Ljava/lang/String;)Ljava/util/List;
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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->g:Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->getResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutsResultByName(Ljava/lang/String;)Ljava/util/List;
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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->g:Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->getResultByName(Ljava/lang/String;)Ljava/util/List;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->e:Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessesResult(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->j:Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->getResult(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesResult(Ljava/lang/String;)Ljava/util/List;
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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->k:Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;->getResult(Ljava/lang/String;)Ljava/util/List;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->f:Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;->getResult()Ljava/util/List;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->h:Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->getResult()Ljava/util/List;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->i:Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0, p3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "tabletapplication"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    :cond_1
    move v0, v2

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->d:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getLink(Ljava/lang/Object;)Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_6
    const-string v0, "parameters"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->e:Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_7
    const-string v0, "responsecodes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->f:Lnet/veritran/vtuserapplication/configuration/ConfigurationResponseCodeHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_8
    const-string v0, "layouttemplates"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->g:Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_9
    const-string v0, "themes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->h:Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "views"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->i:Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "processes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->j:Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "resources"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->k:Lnet/veritran/vtuserapplication/configuration/ConfigurationResourceHandler;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationHandler;->c:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_2
.end method

.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;
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

.field private b:Lnet/veritran/vtuserapplication/utils/Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

.field private e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

.field private f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->h:Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "layouttemplates"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->insertParent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "layouttemplate"

    const-string v2, "layouttemplates"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "landscapevisualareas"

    const-string v2, "layouttemplate"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "visualarea"

    const-string v2, "landscapevisualareas"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "portraitvisualareas"

    const-string v2, "layouttemplate"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "visualarea"

    const-string v2, "portraitvisualareas"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "visualareas"

    const-string v2, "visualarea"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "visualarea"

    const-string v2, "visualareas"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

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

    const-string v0, "layouttemplates"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeConfigurationLayouts(Ljava/util/ArrayList;Ljava/lang/String;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "layouttemplate"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "visualareas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "landscapevisualareas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "portraitvisualareas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    goto :goto_0

    :cond_4
    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getPrevious()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    goto :goto_0
.end method

.method public getResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getSerializedConfigurationLayouts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getResultByName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->c:Ljava/lang/String;

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    :cond_0
    :goto_0
    const-string v0, "layouttemplates"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->g:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    goto :goto_0

    :cond_4
    const-string v0, "layouttemplate"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    move v0, v2

    move v1, v3

    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->c:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->setName(Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "landscapeorientation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->setOrientationLandscape(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v5, "portraitorientation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->setOrientationPortrait(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    goto/16 :goto_1

    :cond_a
    const-string v0, "landscapevisualareas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->h:Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    goto/16 :goto_1

    :cond_b
    const-string v0, "portraitvisualareas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->h:Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    goto/16 :goto_1

    :cond_c
    const-string v0, "visualareas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    goto/16 :goto_1

    :cond_d
    const-string v0, "visualarea"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    :goto_4
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_13

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->setName(Ljava/lang/String;)V

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    const-string v3, "size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->setSize(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const-string v3, "isWrapper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->setIsWrapper(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const-string v3, "orientation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->setOrientation(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    const-string v3, "distribution"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->setDistribution(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->h:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->addElementLandscape(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;)V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->addElementPortrait(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;)V

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationLayoutHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->addElement(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;)V

    goto/16 :goto_1
.end method

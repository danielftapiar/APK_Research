.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;
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

.field private d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

.field private e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

.field private f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "themes"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->insertParent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "theme"

    const-string v2, "themes"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "themeelements"

    const-string v2, "theme"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "element"

    const-string v2, "themeelements"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "properties"

    const-string v2, "element"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "property"

    const-string v2, "properties"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->h:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

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

    const-string v0, "theme"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_1
    const-string v0, "element"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->addElement(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;)V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    goto :goto_0

    :cond_2
    const-string v0, "property"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->addProperty(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;)V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    goto :goto_0

    :cond_3
    const-string v0, "themes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeConfigurationTheme(Ljava/util/ArrayList;Ljava/lang/String;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getPrevious()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    goto :goto_1
.end method

.method public getResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getSerializedConfigurationTheme(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->c:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    :cond_0
    :goto_0
    const-string v0, "themes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->g:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    goto :goto_0

    :cond_4
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->setId(Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->c:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    :cond_7
    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->setName(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    goto :goto_1

    :cond_9
    const-string v0, "element"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    :goto_4
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "elementclass"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->setElementClass(Ljava/lang/String;)V

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    const-string v3, "elementtag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->setElementTag(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v3, "elementid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->setElementId(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string v0, "property"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    :goto_6
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "propertyid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->setPropertyId(Ljava/lang/String;)V

    :cond_e
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationThemeHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->setValue(Ljava/lang/String;)V

    goto :goto_7
.end method

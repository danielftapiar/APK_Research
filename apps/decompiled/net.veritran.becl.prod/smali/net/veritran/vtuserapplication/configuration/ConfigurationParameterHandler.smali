.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;
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

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;",
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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "parameters"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->insertParent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "parameter"

    const-string v2, "parameters"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->h:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

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

    const-string v0, "parameter"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    const-string v0, "parameters"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeConfigurationParameter(Ljava/util/ArrayList;Ljava/lang/String;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getPrevious()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    goto :goto_1
.end method

.method public getResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getSerializedConfigurationParameter(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->c:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->d:Ljava/lang/String;

    iput-object p3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->e:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    :cond_0
    :goto_0
    const-string v0, "parameters"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->g:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

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

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->b:Lnet/veritran/vtuserapplication/utils/Link;

    goto :goto_0

    :cond_4
    const-string v0, "parameter"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parmid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->c:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->setParameterId(Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->d:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    :cond_8
    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->setType(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->e:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    :cond_a
    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationParameterHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    goto/16 :goto_1
.end method

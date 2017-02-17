.class public Luk/co/santander/santanderUK/famtec/android/parserXML/Element;
.super Luk/co/santander/santanderUK/famtec/android/parserXML/Node;


# instance fields
.field protected attributes:Ljava/util/Vector;

.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

.field protected prefixes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->children:Ljava/util/Vector;

    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    invoke-virtual {v0, p1, p2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespaceCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    instance-of v0, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    if-eqz v0, :cond_3

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    invoke-virtual {v0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParent()Luk/co/santander/santanderUK/famtec/android/parserXML/Node;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    return-object v0
.end method

.method public getRoot()Luk/co/santander/santanderUK/famtec/android/parserXML/Node;
    .locals 1

    :goto_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    if-nez v0, :cond_0

    :goto_1
    return-object p0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    instance-of v0, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    if-nez v0, :cond_1

    iget-object p0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    move-object p0, v0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public parse(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;)V
    .locals 4

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    :goto_0
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p1, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->init()V

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->nextToken()I

    :cond_0
    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->nextToken()I

    return-void

    :cond_1
    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->nextToken()I

    invoke-super {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->parse(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;)V

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->addChild(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v0, v4

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_3

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_3
    aput-object p3, v0, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use \"\" for empty namespace"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->namespace:Ljava/lang/String;

    return-void
.end method

.method protected setParent(Luk/co/santander/santanderUK/famtec/android/parserXML/Node;)V
    .locals 0

    iput-object p1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parent:Luk/co/santander/santanderUK/famtec/android/parserXML/Node;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeCount()I

    move-result v0

    :goto_1
    if-lt v1, v0, :cond_2

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->writeChildren(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

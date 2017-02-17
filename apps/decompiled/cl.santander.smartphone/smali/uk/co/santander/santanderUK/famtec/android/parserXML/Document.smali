.class public Luk/co/santander/santanderUK/famtec/android/parserXML/Document;
.super Luk/co/santander/santanderUK/famtec/android/parserXML/Node;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field protected rootIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iput p1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->addChild(IILjava/lang/Object;)V

    return-void

    :cond_1
    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public getRootElement()Luk/co/santander/santanderUK/famtec/android/parserXML/Element;
    .locals 2

    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document has no root element!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    return-object v0
.end method

.method public getStandalone()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public parse(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->nextToken()I

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->a:Ljava/lang/String;

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->b:Ljava/lang/Boolean;

    invoke-super {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->parse(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;)V

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document end expected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public removeChild(I)V
    .locals 1

    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->removeChild(I)V

    return-void

    :cond_1
    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->rootIndex:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->a:Ljava/lang/String;

    return-void
.end method

.method public setStandalone(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public write(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->a:Ljava/lang/String;

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->b:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Document;->writeChildren(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->endDocument()V

    return-void
.end method

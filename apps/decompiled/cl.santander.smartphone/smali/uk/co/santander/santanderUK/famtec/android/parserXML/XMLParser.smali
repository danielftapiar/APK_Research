.class public Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-direct {v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;-><init>()V

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    return-void
.end method


# virtual methods
.method public findChildNode(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;
    .locals 7

    const/4 v4, 0x0

    iget v5, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    const/4 v2, 0x0

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    iget v0, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    if-le v0, v5, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    move-object v3, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, v3, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    if-le v1, v5, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v2, :cond_4

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    iget v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    invoke-virtual {v1, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_2
    return-object v0

    :cond_2
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, v3, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    add-int/lit8 v6, v5, 0x1

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    move-object v3, v0

    move v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v4

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v4

    goto :goto_1
.end method

.method public getAttributeFromNode(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getNextChildNode(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;
    .locals 7

    const/4 v4, 0x0

    iget v5, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->f:I

    const/4 v2, 0x0

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    iget v1, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->f:I

    add-int/2addr v1, v0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    iget v0, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    if-le v0, v5, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    move-object v3, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, v3, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    if-le v1, v5, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v2, :cond_4

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    iget v2, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    invoke-virtual {v1, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_2
    return-object v0

    :cond_2
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, v3, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    add-int/lit8 v6, v5, 0x1

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->f:I

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    move-object v3, v0

    move v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v4

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v4

    goto :goto_1
.end method

.method public getNodeName(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyFromNode(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    iget v5, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    const/4 v1, 0x0

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    iget v0, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    if-le v0, v5, :cond_5

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    move v3, v2

    move-object v2, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget v0, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    if-le v0, v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->b:Ljava/lang/String;

    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    add-int/lit8 v6, v5, 0x1

    if-ne v0, v6, :cond_3

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v0, v4

    goto :goto_2

    :cond_5
    move-object v2, v4

    goto :goto_1
.end method

.method public getRootNode()Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueFromNode(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public loadXMLFromData(Ljava/io/InputStream;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error leyendo archivo y parseando: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadXMLFromString(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->loadXMLFromData(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->getEventType()I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    move v1, v4

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    new-instance v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    invoke-direct {v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;-><init>()V

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->c:I

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->a:Ljava/lang/String;

    iput-object v3, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->b:Ljava/lang/String;

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    iput v4, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->f:I

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->getAttributeCount()I

    move-result v5

    if-lez v5, :cond_1

    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    move v1, v4

    :goto_1
    if-lt v1, v5, :cond_2

    :cond_1
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_2
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->next()I

    move-result v1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_2
    iget-object v6, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    iget-object v7, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v7, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v6, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    iget-object v7, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v7, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, v1, -0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->b:Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;

    invoke-virtual {v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v2, v3

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    iput-object v2, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->b:Ljava/lang/String;

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLParser;->a:Ljava/util/Vector;

    iget v5, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->g:I

    invoke-virtual {v2, v0, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public releaseNode(Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;)V
    .locals 0

    invoke-virtual {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->release()V

    return-void
.end method

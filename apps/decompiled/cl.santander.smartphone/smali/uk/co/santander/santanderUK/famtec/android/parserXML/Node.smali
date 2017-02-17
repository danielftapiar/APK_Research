.class public Luk/co/santander/santanderUK/famtec/android/parserXML/Node;
.super Ljava/lang/Object;


# static fields
.field public static final CDSECT:I = 0x5

.field public static final COMMENT:I = 0x9

.field public static final DOCDECL:I = 0xa

.field public static final DOCUMENT:I = 0x0

.field public static final ELEMENT:I = 0x2

.field public static final ENTITY_REF:I = 0x6

.field public static final IGNORABLE_WHITESPACE:I = 0x7

.field public static final PROCESSING_INSTRUCTION:I = 0x8

.field public static final TEXT:I = 0x4


# instance fields
.field protected children:Ljava/util/Vector;

.field protected types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    instance-of v0, p3, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Element obj expected)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p3

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    invoke-virtual {v0, p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->setParent(Luk/co/santander/santanderUK/famtec/android/parserXML/Node;)V

    :cond_3
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, p3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    int-to-char v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    return-void

    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "String expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->addChild(IILjava/lang/Object;)V

    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;
    .locals 1

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    invoke-direct {v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->namespace:Ljava/lang/String;

    iput-object p2, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getElement(I)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;
    .locals 2

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    if-eqz v1, :cond_0

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, p2, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Element {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v0, v4, :cond_1

    const-string v0, " not found in "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, " more than once in "

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getElement(I)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    invoke-virtual {p0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getChildCount()I

    move-result v1

    move v0, p3

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getElement(I)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isText(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parse(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->addChild(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->nextToken()I

    :goto_1
    if-eqz v0, :cond_0

    return-void

    :pswitch_0
    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->addChild(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->parse(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->addChild(ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeChild(I)V
    .locals 4

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt p1, v0, :cond_0

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void

    :cond_0
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->types:Ljava/lang/StringBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public write(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V
    .locals 0

    invoke-virtual {p0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->writeChildren(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V

    invoke-interface {p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->flush()V

    return-void
.end method

.method public writeChildren(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V
    .locals 4

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->getType(I)I

    move-result v3

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;

    invoke-virtual {v0, p1}, Luk/co/santander/santanderUK/famtec/android/parserXML/Element;->write(Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->text(Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;

    goto :goto_1

    :pswitch_3
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

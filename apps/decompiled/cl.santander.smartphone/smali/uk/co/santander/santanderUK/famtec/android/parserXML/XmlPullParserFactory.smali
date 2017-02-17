.class public Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Class;


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/Hashtable;

.field protected parserClasses:Ljava/util/Vector;

.field protected serializerClasses:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;

    invoke-direct {v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->a:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    return-void
.end method

.method public static newInstance()Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;
    .locals 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    sget-object v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->a:Ljava/lang/Class;

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DEFAULT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string p0, "com.tecnocom.famtec.j2me.KXmlParser,com.tecnocom.famtec.j2me.KXmlSerializer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resource  that contained \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    move v0, v3

    move-object v2, v4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_4

    if-nez v2, :cond_2

    new-instance v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;

    invoke-direct {v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;-><init>()V

    :cond_2
    iput-object v9, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    iput-object v10, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    iput-object v1, v2, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parameter classNames to newInstance() that contained \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/16 v5, 0x2c

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_5
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v8, v0

    move-object v0, v6

    :goto_2
    if-eqz v8, :cond_8

    instance-of v6, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;

    if-eqz v6, :cond_a

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v6, v7

    :goto_3
    instance-of v12, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;

    if-eqz v12, :cond_6

    invoke-virtual {v10, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v6, v7

    :cond_6
    instance-of v8, v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;

    if-eqz v8, :cond_7

    if-nez v2, :cond_9

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;

    :goto_4
    move v6, v7

    move-object v2, v0

    :cond_7
    if-nez v6, :cond_8

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incompatible class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v4

    :goto_5
    move-object v8, v0

    move-object v0, v4

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v5, 0x1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_5

    :cond_9
    move-object v0, v2

    goto :goto_4

    :cond_a
    move v6, v3

    goto :goto_3
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNamespaceAware()Z
    .locals 1

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p0, v0}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newPullParser()Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;
    .locals 7

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Factory initialization was incomplete - has not tried "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No valid parser classes found in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_2

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not create parser: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;

    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method public newSerializer()Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;
    .locals 6

    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Factory initialization incomplete - has not tried "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No valid serializer classes found in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v3, v1, :cond_2

    new-instance v1, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not create serializer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlSerializer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 3

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setValidating(Z)V
    .locals 3

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
